section .data
    ; Definindo as variáveis
    num1    db  5        ; primeiro número (inteiro de 1 byte)
    num2    db  10       ; segundo número (inteiro de 1 byte)
    result  db  0        ; resultado da adição (inicializado como 0)

section .text
    global _start

_start:
    ; Movendo os valores para registradores
    mov al, [num1]      ; Move o valor de num1 para o registrador AL
    mov bl, [num2]      ; Move o valor de num2 para o registrador BL

    ; Adicionando os valores
    add al, bl          ; Adiciona AL (num1) e BL (num2)
    mov [result], al    ; Move o resultado para 'result'

    ; Exibindo o resultado
    ; Código para exibição em console pode variar dependendo do sistema operacional
    ; Abaixo está um exemplo para Linux usando syscall
    mov rax, 1          ; syscall para write
    mov rdi, 1          ; file descriptor 1 = STDOUT
    mov rsi, result     ; endereço do resultado
    mov rdx, 1          ; tamanho para escrever (1 byte)
    syscall

    ; Saindo do programa
    mov eax, 60         ; syscall para exit
    xor edi, edi        ; código de saída 0
    syscall
