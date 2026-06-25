#!/bin/bash
 USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run this script as root user"
    exit 1
 fi  


 #first arg -> what are you trying to install
# second arg -> exit code


 validate() {
    if [ $2 -ne 0 ]; then
        echo "$1  isntallaion failed to install"
    else
        echo "$1 installed successfully"
    fi
 }

dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "mysql is  already installed"
else
    echo "mysql is not installed"
    validate "mysql" $?
fi





