#!/bin/bash
echo "all variables:- $@"
echo "number of variables:- $#"
echo "script name:- $0"
echo "present working directory:- $PWD"
echo "home directory:- $HOME"
echo "process id of current script:- $$"
sleep 20 &
echo "process id of last command background:- $!"