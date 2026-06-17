#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "Error :: it should be in root user"
    exit 1
fi
dnf install mysql -y

sudo dnf install git -y

