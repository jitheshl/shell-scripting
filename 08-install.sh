#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "Error :: it should be in root user"
    exit 1
fi

dnf list installed mysql
if [ $? -ne 0 ]
then
    dnf install mysql -y
    if [ $? -ne 0 ]
    then
    echo "installing.... mysql failure"
    exit 1
    else
    echo "installing.... mysql sucessful"
    fi
else
echo "mysql is already installed"

dnf list installed git
if [ $? -ne 0]
then
    dnf install git -y
    if [ $? -ne 0 ]
    then
    echo "installing.... git failure"
    exit 1
    else
    echo "installing.... git
    sucessful"
    fi
else
echo "git is already installed"

    






# dnf install mysql -y
# if [ $? -ne 0 ]
# then
# echo "installing.... mysql failure"
# exit 1
# else
# echo "installing.... mysql sucessful"
# fi
# sudo dnf install git -y
# if [ $? -ne 0 ]
# then
# echo "installing.... git failure"
# exit 1
# else
# echo "installing.... git
#  sucessful"
# fi

