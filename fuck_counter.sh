#!/bin/bash

number=$(< /reallyfat/MCServers/green/autobot/vars/fuck_counter)
((number=number+1))
echo $number > /reallyfat/MCServers/green/autobot/vars/fuck_counter
string_number=$( printf $number )

if [ "$number" -le 14 ] && [ "$number" -ge 10 ] ;
then
	suffix="th"
else
	ending_string_number=$((${string_number: -1}))

	case $ending_string_number in
		1)
			suffix="st"
		;;
		2)
			suffix="nd"
		;;
		3)
			suffix="rd"
		;;
		*)
			suffix="th"
		;;
	esac
fi


docker exec green rcon-cli --port 25579 --password minecraft say "Hey, watch your language! This is the $number$suffix time that word has been used."
