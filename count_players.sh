#!/bin/bash
#case $1 in
#	up)
#number=$(< /reallyfat/MCServers/green/autobot/vars/player_counter)
#((number=number+1))
#echo $number > /reallyfat/MCServers/green/autobot/vars/player_counter
#string_number=$( printf $number )
#	;;
#	down)
#number=$(< /reallyfat/MCServers/green/autobot/vars/player_counter)
#((number=number-1))
#echo $number > /reallyfat/MCServers/green/autobot/vars/player_counter
#string_number=$( printf $number )
#	;;
#esac

case $1 in
	"joined the game")
	up_down=""players_online = players_online+1""
	;;
	"left the game")
	up_down=""players_online = players_online-1""
	;;
esac

sqlite3 /reallyfat/MCServers/green/autobot/database.green.db 'UPDATE counts SET "$up_down"'
