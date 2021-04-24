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

# Macro para ler um número inteiro.
.macro leNumero
	li $v0, 5
	syscall
.end_macro 

.text
.globl principal # Indica que o programa começa a execução em principal.


principal:
printf("Digite o primeiro número: ")
leNumero
move $s0, $v0 # Move o conteúdo de $v0 para $s0

printf("Digite o segundo número: ")
leNumero
move $s1, $v0

bge $s0, $s1, MaiorOuIgual
printf("O primeiro número é menor que o segundo")
fim

MaiorOuIgual:
printf("O primeiro número é maior ou igual ao segundo")
fim

