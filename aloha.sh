#!/bin/bash

player=$1
aloha=$2
case $aloha in
	"joined the game")
	direction=welcome
	;;
	"left the game")
	direction=goodbye
	;;
esac
	
aloha_message=$(sqlite3 /reallyfat/MCServers/green/autobot/database.green.db "SELECT * FROM "$direction" ORDER BY RANDOM() LIMIT 1")
message=${aloha_message/'insert_player_name_here'/$player}
/reallyfat/MCServers/green/autobot/count_players.sh "$aloha"

/reallyfat/MCServers/green/autobot/send_message.sh "$message"

rm /home/snow/.swatchdog_script* &>/dev/null
