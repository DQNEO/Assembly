        // Get argc and argv via libc's main
        // run the binary with "foo bar" as arguments
        // -no-pie option is required
.str1:
        .string "argc=%d\narg0=%s, arg1=%s, arg2=%s\n"

        .text
        .global main
main:
        /*
        This program do the same result as the following C code
        int main(int argc, char **argv) {
          printf("argc=%d\narg0=%s, arg1=%s, arg2=%s\n", argc, *(argv+0), *(argv+1), *(argv+2));
        }
        */
        mov %rdi, %r10 # stash argc
        mov %rsi, %r11 # stash argv

        mov $0, %rdi # clear %rdi
        mov $0, %rsi # clear %rsi

        lea .str1(%rip), %rdi # format string
        mov %r10,        %rsi # argc
        mov 0(%r11),     %rdx # *(argv + 0)
        mov 8(%r11),     %rcx # *(argv + 1)
        mov 16(%r11),    %r8  # *(argv + 2)
        mov $0, %rax # clear rax
        call printf

        ret
