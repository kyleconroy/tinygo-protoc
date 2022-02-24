run: example.wasm
	WASMTIME_BACKTRACE_DETAILS=1 wasmtime example.wasm

example.wasm: example.go hello/hello.pb.go
	tinygo build -o example.wasm -gc=leaking -scheduler=none -wasm-abi=generic -target=wasi

hello/hello.pb.go: hello/hello.proto
	protoc --go_out=. --go_opt=paths=source_relative \
		--go-grpc_out=. --go-grpc_opt=paths=source_relative \
		hello/hello.proto
