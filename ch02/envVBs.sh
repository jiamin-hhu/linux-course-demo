#!/bin/bash

pstree -p | head -n 1 ; pstree -p | grep $$

#set VINEB and VINLB in /etc/bash.bashrc and ~/.bashrc, respectively
echo $VINEB 
echo $VINLB

#set $BASH_ENV as hello.rc, in order to execute the init file during the non-interactive mode
echo $HELLO
