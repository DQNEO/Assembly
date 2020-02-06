# needs -no-pie option
.str1:
	.string "hello\n"

	.text
        .global main
main:
	lea .str1(%rip), %rcx # "hello\n"
	mov $1, %rdi   # 1st argument: int file descriptor
	mov %rcx, %rsi # 2nd argument: ptr to buffer
        mov $6,  %rdx  # 3rd argument: size_t nbyte
	mov $0, %rax
	call write
	ret
