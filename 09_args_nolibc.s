        // as -o $base.o $base.s
        // ld -o $base $base.o
        // ./$base 123
        // > 123
        // Get argc and argv without linked to libc
        // run the binary with "foo" as an argument
        .text
        .global _start
_start:
        /*
        This program do the same result as the following C code
        int main(int argc, char **argv) {
          write(stdout, argv[1], 3);
          return 0l
        }
        */
        pop %r10 # stash argc
        mov %rsp, %r11 # copy argv

        # syscall(sys_write, 1, buf, len)
        mov $1, %rax      # sys_write
        mov $1, %rdi      # stdout
        mov 8(%r11), %rsi # argv[1]
        mov $3, %rdx      # len
        syscall

        # exit(0)
	mov $60, %rax   # 1st argument: __x64_sys_exit
	mov $0,  %rdi   # 2st argument: int status
	syscall
