	.data 0

	.global const
const:	.float 166.386

	.global n
n:	.word 6

	.global ptas
ptas:	.float 85.0, 100.0, 30.0, 4.0, 20.0, 12.0


	.text
	.global main

main:	lw   r2,n(r0)
	addi r5,r0,0
	addi r3,r0,0
	addi r2,r2,-1

LL:	addi r3,r3,1
	sgt  r4,r3,r2
	lf   f8,const(r1)
	lf   f12,ptas(r5)
	addi r5,r5,4
	divf f12,f12,f8
	beqz r4,LL


	nop
	nop


	trap #0