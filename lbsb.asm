.data
inicial: .byte 'P' # O P mai�sculo � 80 em ASCII.
min: .byte 'c' # Reserva espa�o para o caractere minusculo.
novaLinha: .asciiz "\n"
msg1: .asciiz "A inicial em mai�sculo do meu nome �: "
msg2: .asciiz "A inicial do meu nome em min�sculo �: "

.text
lb $t0, inicial # Carrega em $t0.
li $t1, 112 # O p � 112 em ASCII.
sb $t1, min

# Imprime a msg1.
li $v0, 4
la $a0, msg1
syscall

# Imprime o 'P' mai�sculo.
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

# Imprime o 'p' min�sculo.
li $v0, 11
la $a0, ($t1)
syscall

# Encerra o programa.
li $v0, 10
syscall