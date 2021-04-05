.data

pnmr: .asciiz "Digite o primeiro numero: "
snmr: .asciiz "Digite o segundo numero: "
rsltd: .asciiz "O resultado e: "

.macro finalizarPrograma #Macro que finaliza o programa
	li $v0, 10
	syscall 
.end_macro 

.macro multiplicar(%valorA,%valorB)
	.text
	mul $s2, %valorA, %valorB
	li $v0, 4
	la $a0, rsltd
	syscall
	li $v0, 1
	la $a0, ($s2)
	syscall
.end_macro 

.text
.globl principal

principal:
	li $v0, 4
	la $a0, pnmr
	syscall
	li $v0, 5
	syscall
	move $s0, $v0
	li $v0, 4
	la $a0, snmr
	syscall
	li $v0, 5
	syscall
	move $s1, $v0
	
	multiplicar($s0,$s1)
	finalizarPrograma
