.data				#Diretiva usada para declarar as variaveis ou constantes
msg: .asciiz "Ola Mundo!"
.text				#Diretiva usada para conter o codigo em si
li $v0, 4			#Imprime uma string
la $a0, msg			#$a0 = msg
syscall 
li $v0, 10			#Prepara o encerramento do programa
syscall