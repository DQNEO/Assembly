	// Call write(2) directly
	// -no-pie option is required
	.str1:
	.string "hello\n"

	.text
	.global main
main:
	lea .str1(%rip), %rcx # "hello\n"
	mov $1, %rax   # 1st argument: __x64_sys_write (=1)
	                       # see https://github.com/torvalds/linux/blob/v5.5/arch/x86/entry/syscalls/syscall_64.tbl#L12
	mov $1, %rdi   # 2st argument: int file descriptor
	mov %rcx, %rsi # 3nd argument: ptr to buffer
	mov $6,  %rdx  # 4rd argument: size_t nbyte
	syscall

	mov $0, %rax
	ret
