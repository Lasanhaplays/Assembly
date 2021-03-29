.data
msg: .asciiz "Olá mundo!"

.text
.globl principal

principal:
li $v0, 4		#Imprime uma string
la $a0, msg		#Recebe a variavel msg no registrador $a0
syscall 
li $v0, 10		#Prepara o encerramento do programa
syscall 