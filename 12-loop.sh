#!/bin/bash

# for i in {1..100}
# do 
# echo $i
# done

#!/bin/bash
userid=$(id -u)
r="\e[31m"
g="\e[32m"
y="\e[33m"

log_folder="/var/log/shellscript-log"
log_files=$(echo $0 | cut -d "." -f1)
time_stamp=$(date +%d-%m-%Y-%H-%M-%S)
log_file_name="$log_folder/$log_files-$time_stamp.log"
if [ $userid -ne 0 ]
then
    echo "Error :: it should be in root user"
    exit 1
fi
validate(){
    if [ $1 -ne 0 ]
    then
    echo -e "$r installing.... $2 failure"
    exit 1
    else
    echo -e "$g installing.... $2 sucessful"
    fi
}

for package in "$@"
do
dnf list installed $package &>>log_file_name
if [ $? -ne 0 ]
then
    dnf install $package -y
    validate $? "$package"
    
else
echo -e "$y $package is already installed"
fi

done


echo "Script started executing at : $time_stamp" &>>$log_file_name

