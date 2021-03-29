.data

.macro finalizarPrograma #Macro que finaliza o programa
	li $v0, 10
	syscall 
.end_macro 

.macro print (%str)	#Macro que imprime determinada string
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
print("Ola mundo!!\n")
finalizarPrograma