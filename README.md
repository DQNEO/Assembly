My Assembly sandbox

All `*.s` codes are written in GAS for x86-64 linux so far.

# How to run

```
$ docker run --rm -it -v `pwd`:/mnt -w /mnt dqneo/ubuntu-build-essential:latest bash
root@6b996b01c7b8:/mnt# gcc 01_exit.s
root@6b996b01c7b8:/mnt# ./a.out; echo $?
42
```
