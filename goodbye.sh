#!/bin/bash
player=$1
goodbye_message=$(sqlite3 /reallyfat/MCServers/green/autobot/database.deaths.db "SELECT * FROM goodbye  ORDER BY RANDOM() LIMIT 1")
message=${goodbye_message/'insert_player_name_here'/$player}

/reallyfat/MCServers/green/autobot/send_message.sh say "$message"
/reallyfat/MCServers/green/autobot/count_players.sh say down
#/reallyfat/MCServers/green/autobot/send_message.sh say "$goodbye_message"
