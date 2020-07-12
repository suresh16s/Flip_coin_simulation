#!/bin/bash  
Head=0
Tail=0
while [ $Head -ne 21 ] && [ $Tail -ne 21 ]
do
Flip=$(( RANDOM%2 ))
        if [ $Flip -eq 1 ]
        then
                Head=$(($Head+1))
        else
                Tail=$(($Tail+1))
        fi
done
if [ $Head -gt $Tail ]
then
	echo "Head Wons by $(($Head-$Tail)):"
elif [ $Head -lt $Tail ]
then
	echo "Tail Wons by $(($Tail-$Head)):"
else
	echo "TIE:"
fi
