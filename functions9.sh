#!/bin/bash
 USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run this script as root user"
    exit 1
 fi  

dnf install mysql -y 

dnf list installed mysql

if [ $? -eq 0 ]; then
    echo "mysql is installed"
else
    echo "mysql is not installed"
fi



