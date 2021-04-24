.data
# Macro que encerra o programa.
.macro fim
	li $v0, 10
	syscall
.end_macro 

# Macro que imprime uma string recebida como argumento.
.macro printf (%str)
	.data
	msg: .asciiz %str
	.text
	li $v0, 4
	la $a0, msg
	syscall
.end_macro 

.text
.globl principal

principal:
li $s0, 4
li $s1, 4
li $s2, 7

beq $s0, $s1, T2
printf("Pelo menos um número é diferente!")
fim

T2:
beq $s0, $s2, Iguais
printf("Pelo menos um número é diferente!")
fim

Iguais:
printf("Os três números são iguais!")
fim
