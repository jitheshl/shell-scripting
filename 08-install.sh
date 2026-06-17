#!/bin/bash
userid=$(id -u)
if [ userid -ne 0 ]
then
    echo "Error :: it should be in root user"
fi
dnf install mysql -y

