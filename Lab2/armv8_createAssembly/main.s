	.text
	.org 0x0000
       add x15, x0, x0
       add x9, x15, #10
       sub x10, x10, x9
       cbz x10, loop1
       add xzr, xzr, xzr
       add xzr, xzr, xzr
       add xzr, xzr, xzr
       stur x6, [x0, #0]
loop1: add x10, x15, #5
loop2: stur x2, [x0,#8]
       ldur x11, [x0, #8]
       add x2, x2, x1
       orr x4, x4, x15
       stur x2, [x0, #16]
       add x0, x0, #16
       sub x10, x10, x1
       cbnz x10, loop2
       add xzr, xzr, xzr
       add xzr, xzr, xzr
       add xzr, xzr, xzr
       stur x3, [x0, #8]
loop3: add x0, x15, x15
       cbz x15, loop3
