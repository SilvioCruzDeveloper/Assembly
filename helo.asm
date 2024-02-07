section .data
    msg db 'Hello, world!', 0

section .text
    global _start

_start:
    ; Escrever a mensagem na saída padrão (console)
    mov eax, 4          ; Número da syscall para sys_write
    mov ebx, 1          ; Descritor de arquivo para stdout (1)
    mov ecx, msg        ; Endereço da mensagem
    mov edx, 13         ; Tamanho da mensagem
    int 0x80            ; Chamada do sistema

    ; Terminar o programa
    mov eax, 1          ; Número da syscall para sys_exit
    xor ebx, ebx        ; Código de saída 0 (sem erros)
    int 0x80            ; Chamada do sistema
