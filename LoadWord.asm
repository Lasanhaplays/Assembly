.data
idade: .word 21
nome: .asciiz "Lazaro Jose\n"

.text
lw $t0, idade
la $t1, nome

li $v0, 4
la $a0, ($t1)
syscall

li $v0, 1
la $a0, ($t0)
syscall