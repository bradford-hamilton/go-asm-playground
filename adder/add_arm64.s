// func Add(x, y int64) int64
TEXT ·Add(SB), $0-24
    MOVD x+0(FP), R0    // Load the first argument (x) into R0
    MOVD y+8(FP), R1    // Load the second argument (y) into R1
    ADD R0, R1, R0      // Add R1 to R0 and store the result in R0
    MOVD R0, ret+16(FP) // Store the result back to the return value on the stack
    RET                 // Return from the function
