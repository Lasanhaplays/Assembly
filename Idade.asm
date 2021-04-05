.data
idade: .word 0
idd: .asciiz "Digite a sua idade: "
idda: .asciiz "\nA sua idade e:  "

.macro finalizarPrograma #Macro que finaliza o programa
	li $v0, 10
	syscall 
.end_macro 

.text

li $v0, 4
la $a0, idd
syscall

li $v0, 5
syscall
move $t0, $v0

sw $t0, idade

li $v0, 4
la $a0, idda
syscall

li $v0, 1
lw $a0, idade
syscall

finalizarPrograma