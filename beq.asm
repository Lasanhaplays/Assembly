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
.globl principal # Indica que o programa começa a execução em principal.

principal:
addi $s0, $zero, 5
addi $s1, $zero, 5

# Se o beq = true vem para esse trecho.
iguais:
printf("Os dois números são iguais!")
fim


beq $s0, $s1, iguais
# Se beq = false vem para esse trecho.
printf("Os dois números são diferentes!")
fim



