PHONY: run asm odump clean

run:
	go run main.go

asm:
	go build -gcflags=-S -o temp main.go > tempasm.s 2>&1
	sed 's|/Users/bradford/workspace/go/src/github.com/bradford-hamilton/go-asm-playground/||' tempasm.s > asm.s
	rm tempasm.s
	rm temp

odump:
	go build -o temp main.go
	go tool objdump temp > objdump.txt
	rm temp

clean:
	rm asm.s
	rm objdump.txt
