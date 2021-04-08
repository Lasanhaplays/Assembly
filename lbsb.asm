.data
inicial: .byte 'P' # O P maiúsculo é 80 em ASCII.
min: .byte 'c' # Reserva espaço para o caractere minusculo.
novaLinha: .asciiz "\n"
msg1: .asciiz "A inicial em maiúsculo do meu nome é: "
msg2: .asciiz "A inicial do meu nome em minúsculo é: "

.text
lb $t0, inicial # Carrega em $t0.
li $t1, 112 # O p é 112 em ASCII.
sb $t1, min

# Imprime a msg1.
li $v0, 4
la $a0, msg1
syscall

# Imprime o 'P' maiúsculo.
li $v0, 11
la $a0, ($t0)
syscall

# Pula uma linha
li $v0, 4
la $a0, novaLinha
syscall

# Imprime a msg2.
li $v0, 4
la $a0, msg2
syscall

# Imprime o 'p' minúsculo.
li $v0, 11
la $a0, ($t1)
syscall

# Encerra o programa.
li $v0, 10
syscall