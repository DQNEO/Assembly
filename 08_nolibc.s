	# gcc -g -nostdlib 08_nolibc.s
	.global _start
_start:
	mov $60, %rax   # 1st argument: __x64_sys_exit
	mov $0,  %rdi   # 2st argument: int status
	syscall
