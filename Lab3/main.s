	.text
	.org 0x0000
    
 add x9, x0,x0
    add x8, x0,x0
    add x4, x0,#32
    add X10, X0, #15
    orr X11, X12, X20
    and X12, X12, X20
    nop
    loop:ADD X0, X0, X10
    nop
    sub X10, X10, X1
    stur X11, [X9, #0]
    stur X12, [X9, #8]
    nop
    nop
    cbnz X10, loop
    nop
    stur X0, [X9, #16]
 label: nop
    cbz x9, label