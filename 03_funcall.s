        .global main
main:
        // Following the System V AMD64 ABI.
        // see https://en.wikipedia.org/wiki/X86_calling_conventions#System_V_AMD64_ABI
        mov $5, %rdi
        mov $8, %rsi
        call sum
        ret

sum:
        mov %rdi, %rax
        mov %rsi, %rcx
        add %rcx, %rax
        ret
        
