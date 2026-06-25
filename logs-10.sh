#!/bin/bash
 USERID=$(id -u)
LOGSDIR=var/log/shellscript
LOGS_FILE="$LOGS_DIR/$0.log" 


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
    dnf install mysql -y
    validate "mysql" $?
fi


dnf list installed nginx

if [ $? -eq 0 ]; then
    echo "nginx is  already installed"
else
    echo "nginx is not installed"
    dnf install nginx -y
    validate "nginx" $?
fi





