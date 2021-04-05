.data
resultado: .asciiz "O resultado da divisao e: "
resto: .asciiz "\nO resto da divisao e: "

.macro finalizarPrograma #Macro que finaliza o programa
	li $v0, 10
	syscall 
.end_macro 

.macro divisao(%valorA,%valorB)
	.text
	li $s0, %valorA#valorA
	li $s1, %valorB#valorB
	div $s0, $s1
	li $v0, 4
	la $a0, resultado
	syscall
	li $v0, 1
	mflo $s0
	la $a0, ($s0)
	syscall
	li $v0, 4
	la $a0, resto
	syscall
	li $v0, 1
	mfhi $s1
	la $a0, ($s1)
	syscall
.end_macro 

.text
.globl principal

principal:
	divisao(5,2)
	finalizarPrograma
