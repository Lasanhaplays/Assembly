.data

.macro finalizarPrograma #Macro que finaliza o programa
	li $v0, 10
	syscall 
.end_macro 

.macro somar(%valorA,%valorB,%valorC)
	.text
	addi $s1, $s0, %valorA
	addi $s2, $s1, %valorB
	addi $s3, $s2, %valorC
	li $v0, 1
	la $a0, ($s3)
	syscall
.end_macro 

.text
.globl principal

principal:
	somar(5,6,15)
	finalizarPrograma
