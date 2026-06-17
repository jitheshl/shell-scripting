#!/bin/bash
userid=$(id -u)
if [ $userid -ne 0 ]
then
    echo "Error :: it should be in root user"
    exit 1
fi
dnf install mysql -y
if [ $? -ne 0 ]
then
echo "installing.... mysql failure"
exit 1
else
echo "installing.... mysql sucessful"
fi
sudo dnf install git -y
if [ $? -ne 0 ]
then
echo "installing.... mysql failure"
exit 1
else
echo "installing.... mysql sucessful"
fi

