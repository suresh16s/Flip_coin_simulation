#!/bin/bash
flip=$(( (RANDOM % 2)+0 ))
echo $flip

if [ $flip -eq 1 ]
then
	echo "head:"
elif [ $flip -eq 0 ]
then
	echo "tail"
fi
