.data
dnome: .asciiz "Digite seu nome: "
bemvindo: .asciiz "\nSeja bem-vindo! "
nome: .space 40 #nome digitado pelo usuario

.text

li $v0, 4
la $a0, dnome
syscall

li $v0, 8
la $a0, nome
la $a1, 40
syscall

li $v0, 4
la $a0, bemvindo
syscall

li $v0, 4
la $a0, nome
syscall