package main

import (
	"fmt"

	"github.com/bradford-hamilton/go-asm-playground/adder"
)

func square(x int) int {
	return x * x
}

func main() {
	// Use Makefile for exploring the produced assembly:
	result := square(4)
	fmt.Println(result)

	// Use an assembly implementation of a function:
	asmRes := adder.Add(24, 54)
	fmt.Println(asmRes)
}
