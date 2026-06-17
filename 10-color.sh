#!/bin/bash
userid=$(id -u)
r="\e[31m"
g="\e[32m"
y="\e[33m"
if [ $userid -ne 0 ]
then
    echo "Error :: it should be in root user"
    exit 1
fi
validate(){
    if [ $1 -ne 0 ]
    then
    echo -e "$r Ainstalling.... $2 failure"
    exit 1
    else
    echo "$g installing.... $2 sucessful"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    validate $? "mysql"
    
else
echo -e "$y mysql is already installed"
fi
dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
   validate $? "git"
else
echo -e "$y git is already installed"
fi

    






