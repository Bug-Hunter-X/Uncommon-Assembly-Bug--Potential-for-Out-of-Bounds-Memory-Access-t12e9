section .data
    array times 100 dw 0 ; Reserve space for an array of 100 words

section .text
    global _start

_start:
    ; ... (Code to initialize ebx and ecx) ...

    ; Check for valid memory access
    cmp ecx, 25 ; Check if ecx is within bounds (100 words / 4 bytes/word = 25) 
    jg error_handler ; Jump to error handler if out of bounds
    mov eax, ebx  ; Assuming ebx holds the base address
    add eax, ecx ; Offset the address within bounds
    add eax, 10 ; Adding the offset 0x10 
    movzx edx, word[eax] ; Access memory safely
    jmp end

error_handler:
    ; Handle out-of-bounds access appropriately (e.g., exit with an error)
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80

end:
    ; ... (Rest of the code) ...
    mov eax, 1 ; sys_exit
    xor ebx, ebx ; exit code 0
    int 0x80