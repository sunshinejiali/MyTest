/*
 *
 * Copyright 2015 gRPC authors.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */

#include <iostream>
#include <memory>
#include <string>
#include "fstream"

#include <grpcpp/grpcpp.h>
#include <grpc/support/log.h>
#include <thread>
#include <sstream>

#ifdef BAZEL_BUILD
#include "examples/protos/helloworld.grpc.pb.h"
#else
#include "helloworld.grpc.pb.h"
#endif

using grpc::Channel;
using grpc::ClientAsyncResponseReader;
using grpc::ClientContext;
using grpc::CompletionQueue;
using grpc::Status;
using helloworld::HelloRequest;
using helloworld::HelloReply;
using helloworld::Greeter;

class GreeterClient {
public:
    explicit GreeterClient(std::shared_ptr<Channel> channel)
            : stub_(Greeter::NewStub(channel)) {}

    // Assembles the client's payload and sends it to the server.
    void SayHello(const std::int64_t number, const std::int64_t tt) {
        // Data we are sending to the server.
        HelloRequest request;
        request.set_number(number);
        request.set_time_start(tt);

        // Call object to store rpc data
        AsyncClientCall* call = new AsyncClientCall;

        // stub_->PrepareAsyncSayHello() creates an RPC object, returning
        // an instance to store in "call" but does not actually start the RPC
        // Because we are using the asynchronous API, we need to hold on to
        // the "call" instance in order to get updates on the ongoing RPC.
        call->response_reader =
                stub_->PrepareAsyncSayHello(&call->context, request, &cq_);

        // StartCall initiates the RPC call
        call->response_reader->StartCall();

        // Request that, upon completion of the RPC, "reply" be updated with the
        // server's response; "status" with the indication of whether the operation
        // was successful. Tag the request with the memory address of the call object.
        call->response_reader->Finish(&call->reply, &call->status, (void*)call);

    }

    // Loop while listening for completed responses.
    // Prints out the response from the server.
    void AsyncCompleteRpc() {
        void* got_tag;
        bool ok = false;

        // Block until the next result is available in the completion queue "cq".
        while (cq_.Next(&got_tag, &ok)) {
            // The tag in this example is the memory location of the call object
            AsyncClientCall* call = static_cast<AsyncClientCall*>(got_tag);

            // Verify that the request was completed successfully. Note that "ok"
            // corresponds solely to the request for updates introduced by Finish().
            GPR_ASSERT(ok);

            if (call->status.ok()){
                timespec ta;
                clock_gettime(CLOCK_REALTIME,&ta);
                std::ofstream out;
                out.open("./AsyncLatencyTest.log", std::ios::app);
                out << call->reply.number() << ' ' << call->reply.time_start() << ' ' << ta.tv_nsec << ' ' << ta.tv_nsec - call->reply.time_start() << '\n';
                /*timespec tb;
                clock_gettime(CLOCK_REALTIME,&tb);*/
                //std::cout << "Greeter received: " << call->reply.number() << std::endl;
            }
            else
                //std::cout << "RPC failed" << std::endl;

            // Once we're complete, deallocate the call object.
            delete call;
        }
    }

private:

    // struct for keeping state and data information
    struct AsyncClientCall {
        // Container for the data we expect from the server.
        HelloReply reply;

        // Context for the client. It could be used to convey extra information to
        // the server and/or tweak certain RPC behaviors.
        ClientContext context;

        // Storage for the status of the RPC upon completion.
        Status status;


        std::unique_ptr<ClientAsyncResponseReader<HelloReply>> response_reader;
    };

    // Out of the passed in Channel comes the stub, stored here, our view of the
    // server's exposed services.
    std::unique_ptr<Greeter::Stub> stub_;

    // The producer-consumer queue we use to communicate asynchronously with the
    // gRPC runtime.
    CompletionQueue cq_;
};

int main(int argc, char** argv) {


    // Instantiate the client. It requires a channel, out of which the actual RPCs
    // are created. This channel models a connection to an endpoint (in this case,
    // localhost at port 50051). We indicate that the channel isn't authenticated
    // (use of InsecureChannelCredentials()).
    GreeterClient greeter(grpc::CreateChannel(
            "localhost:50051", grpc::InsecureChannelCredentials()));

    // Spawn reader thread that loops indefinitely
    std::thread thread_ = std::thread(&GreeterClient::AsyncCompleteRpc, &greeter);
    int number = 1;
    char const *fileName = "./AsyncLatencyTest.log";
    std::ofstream out;
    out.open(fileName,std::ios::trunc);
    while(true) {
        number++;
        timespec tt;
        clock_gettime(CLOCK_REALTIME,&tt);
        greeter.SayHello(number, tt.tv_nsec);  // The actual RPC call!
    }
    out.close();
    std::cout << "Press control-c to quit" << std::endl << std::endl;
    thread_.join();  //blocks forever

    return 0;
}
