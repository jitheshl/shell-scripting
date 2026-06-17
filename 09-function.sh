#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "Error :: it should be in root user"
    exit 1
fi
validate(){
    if [ $1 -ne 0 ]
    then
    echo "installing....$2 failure"
    exit 1
    else
    echo "installing.... $2 sucessful"
    fi
}

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    validate() $? "mysql"
    
else
echo "mysql is already installed"
fi
dnf list installed git
if [ $? -ne 0 ]
then
    dnf install git -y
   validate() $? "git"
else
echo "git is already installed"
fi

    






