My Assembly sandbox

# How to assemble code

```
$ docker run --rm -it -v `pwd`:/mnt -w /mnt dqneo/ubuntu-build-essential:latest bash
root@6b996b01c7b8:/mnt# gcc  01_exit.s
root@6b996b01c7b8:/mnt# ./a.out ; echo $?
42
```
