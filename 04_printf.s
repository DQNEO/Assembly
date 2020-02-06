        // Call libc's printf
        // -no-pie option is required
.str1:
	.string "%s"
.str2:
	.string "hello\n"

	.text
        .global main
main:
	lea .str1(%rip), %rax # "%s"
	lea .str2(%rip), %rcx # "hello\n"
	mov %rax, %rdi
	mov %rcx, %rsi
	mov $0, %rax
	call printf
	ret
