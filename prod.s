	.data 0

	.global i
i:	.word 3

	.global j
j:	.word 2

	.global m
m:	.float 1.0, 2.0, 3.0, 4.0, 5.0, 6.0

	.global v
v:	.float 7.0, 8.0

	.global x
x:	.float 0.0, 0.0, 0.0


	.text
	.global main

main:	lw r2,i(r0)
	lw r3,j(r0)
	addi r4,r0,0
	addi r5,r0,0
	addi r6,r6,0	
	addi r7,r3,0

loopj:	lf f4,v(r5)
	lf f2,m(r4)
	multf f6,f2,f4
	addi r4,r4,4
	addi r5,r5,4
	addi r3,r3,-1
	addf f8,f8,f6
	beqz r3,loopi
	j loopj

loopi:	sf x(r6),f8
	addi r2,r2,-1
	add  r3,r3,r7
	addi r6,r6,4
	addi r5,r5,0
	addf f8,f0,f0
	beqz r2,fin
	j loopj

fin:	nop
	nop


	trap #0