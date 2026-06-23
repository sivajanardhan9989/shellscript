#!/bin/bash
echo "all variables passed in command line are $@"
echo "all variables passed in command line are $*"
echo "first variable passed in command line is $1"
echo "second variable passed in command line is $2"
echo "total number of variables passed in command line are $#"
echo "Script name: $0"
echo "PID of current script: $$"
echo  "current user is $USER"
echo "Line number: $LINENO"
echo "Exit code of previous command: $?"

