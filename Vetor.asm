.data
vetor: .sapce 12 #reserva espaço para 3 inteiros
novaLinha: .asciiz  "\n"

.text
#vamos comecar adicionando os valores que queremos nos registradores.
addi $s0, $zero,5 #carrega 5 em $s0.
addi $s1, $zero,10
addi $s2, $zero,15

#index = $t0
addi $t0, $zero,0 #como se fosse variavel i do vetor

sw $s0 , vetor($t0) #insere $s0 na posicao 0 do vetor
addi $t0, $t0, 4 #incrementa i em 4
sw $s1 , vetor($t0) #insere $s1 na posicao 4 do vetor
addi $t0, $t0, 4 #incrementa i em 4
sw $s2 , vetor($t0) #insere $s2 na posicao 8 do vetor
addi $t0, $t0, 4 #incrementa i em 4

#vamos zerar nossa variavel contador
addi $t0, $zero, 0

#vamos carregar dois valores da memoria principal
lw $t6, vetor($t0) #Carrega o primeiro elemento do vetor $t6
addi $t0, $t0, 4
lw $t7 , vetor($t0) #carrega o segundo elemento do vetor em $t7

#imprime na tela o primeiro elemento
li $v0, 1
addi $a0, $t6, 0
syscall

# Pula uma linha.
li $v0, 4
la $a0, novaLinha
syscall

# Imprime na tela o segundo elemento.
li $v0, 1
addi $a0, $t7, 0
syscall

# Encerra o programa
li $v0, 10
syscall