package main

import (
	"fmt"

	"github.com/kyleconroy/tinygo-protoc/hello"
)

func main() {
	req := hello.HelloRequest{Name: "foo"}
	res := hello.HelloReply{Message: "Hello, foo!"}
	fmt.Println("req", req.Name)
	fmt.Println("res", res.Message)
}
