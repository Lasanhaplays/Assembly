.data
tab: .asciiz "\t"
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
printf("Digite um número inteiro: ")
leNumero
move $t0, $v0 # Move o numero digitado para $t0.


addi $t3, $zero, 0 # Contador do laço

while:
	ble $t3, $t0, imprimir
	fim

	
imprimir:
# Imprime um inteiro.
li $v0, 1
la $a0, ($t3)
syscall
# Imprime um tab.
li $v0, 4
la $a0, tab
syscall
addi $t3, $t3, 1 # t3 = t3 + 1
j while # Volta para o trecho while



