.data
vetor: .space 12 # Reserva espaço para 3 inteiros.
novaLinha: .asciiz "\n"

.text
main:
# Vamos começar adicionando os valores que queremos nos registradores.
addi $s0, $zero, 5 # Carrega 5 em $s0.
addi $s1, $zero, 10 # Carrega 10 em $s1.
addi $s2, $zero, 15 # Carrega 15 em $s2.

# Index = $t0
addi $t0, $zero, 0 # Como se fosse a variável i do vetor.

sw $s0, vetor($t0) # Insere $s0 na posição 0 do vetor.
addi $t0, $t0, 4 # Incrementa i em 4.
sw $s1, vetor($t0) # Insere $s1 na posição 4 do vetor.
addi $t0, $t0, 4 # Incrementa i em 4.
sw $s2, vetor($t0) # Insere $s2 na posição 8 do vetor.


# Precisamos zerar nosso contador.
addi $t0, $zero, 0

while:
	beq $t0, 12, exit # Compara $t0 com 12.
	
	lw $t6, vetor($t0) # Carrega o elemento em $t6.
	
	addi $t0, $t0, 4 # Incrementa o contador.
	
	# Imprime o numero atual.
	li $v0, 1
	move $a0, $t6
	syscall
	
	# Imprime uma linha nova.
	li $v0, 4
	la $a0, novaLinha
	syscall
	
	j while


exit:
	# Encerra o programa
	li $v0, 10
	syscall
