.data

.macro finalizarPrograma #Macro que finaliza o programa
	li $v0, 10
	syscall 
.end_macro 

.macro somar(%valorA,%valorB)
	.text
	li $s0, %valorA#valorA
	li $s1, %valorB#valorB
	add $s2, $s0, $s1
	li $v0, 1
	la $a0, ($s2)
	syscall
.end_macro 

.text
.globl principal

principal:
	somar(5,6)
	finalizarPrograma