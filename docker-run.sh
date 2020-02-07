#!/bin/bash

exec docker run --rm -it -v `pwd`:/mnt -w /mnt --cap-add=SYS_PTRACE --security-opt='seccomp=unconfined' dqneo/ubuntu-build-essential:latest bash
