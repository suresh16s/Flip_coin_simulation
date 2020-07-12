#!/bin/bash -x 
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
if [ $Head -eq $Tail ]
then
	while [ true ]
	do
		r1=$((RANDOM % 2))
		if [ $r1 -eq 1 ]
		then
			Head=$(($Head + 1))
		else
			Tail=$(($Tail + 1))
		fi

		if [ $(($Head - $Tail)) -eq 2 ]
		then
			echo "Head win by 2 and count is $head"
		else
			if [ $(($Tail - $Head)) -eq 2 ]
			then
				echo "Tail win by 2 and count is $tail"
			fi
		fi
	done
elif [ $Head -gt $Tail ]
then
        echo "Head Wons by $(($Head-$Tail)):"
else
        echo "Tail Wons by $(($Tail-$Head)):"

fi
