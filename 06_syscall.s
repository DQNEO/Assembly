.str1:
	.string "hello\n"

	.text
        .global main
main:
	lea .str1(%rip), %rcx # "hello\n"
        mov $1, %rdi   # 1st argument: SYS_write (=1)
	mov $1, %rsi   # 2st argument: int file descriptor
	mov %rcx, %rdx # 3nd argument: ptr to buffer
        mov $6,  %rcx  # 4rd argument: size_t nbyte
	mov $0, %rax
	call syscall
	ret
