.text
.globl main

main:	

 la $t0,array
 lw $t1,count
 lw $t2,($t0)
 add $t0,$t0,4
 add $t1,$t1,-1
	
Loop:

 lw $t3,($t0)
 bge $t3,$t2,NotMin
 move $t2,$t3

NotMin:

 add $t1,$t1,-1
 add $t0,$t0,4
 bne $t1,$0,Loop

.data

array:	 .ascii
count:	 .align	