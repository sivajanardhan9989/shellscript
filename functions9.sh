#!/bin/bash
 USERID=$(id -u)

if [ $USERID -ne 0 ]; then
    echo "please run this script as root user"
    exit 1
 fi  

 # first arg -> what are you trying to install
# second arg -> exit code
validate() {
    if [ $2 -ne 0 ]; then
        echo "Error occurred while installing $1"
        exit 1
    else
        echo "$1 installed successfully"    
    fi
}

# echo "I am continuing..."
dnf list installed mysql 

if [ $? -eq 0 ]; then
    echo "MySQL is already installed ... SKIPPING"
else
    echo "Installing MySQL"
    dnf install mysql -y
    validate MySQL $?
 fi
    
