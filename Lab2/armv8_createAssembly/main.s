	.text
	.org 0x0000
        stur x0,[x0] 
        stur x1,[x0,#8] 
        stur x2,[x0,#16] 
        stur x3,[x0,#24]
        stur x4,[x0,#32]
        stur x5,[x0,#40]
        stur x6,[x0,#48]
        ldur x7,[x0] 
        ldur x8,[x0,#8] 
        ldur x9,[x0,#16] 
        ldur x10,[x0,#24]
        ldur x11,[x0,#32]
        ldur x12,[x0,#40]
        ldur x13,[x0,#48]
        sub x14,x14,x14 
        cbz x14, loop
        nop
        nop
        nop
        nop
        sub x15,x0,x1 
loop:   add x15,x0,x1
        stur x15, [x0,#56]
