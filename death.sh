#!/bin/bash

invar_time_stamp=$1; invar_victim=$2; invar_way_of_death=$3; invar_bastard=$4; invar_with=$5; invar_tool_used=$6


sqlite3 /reallyfat/MCServers/green/autobot/database.green.db "CREATE TABLE IF NOT EXISTS victims(timestamp DATETIME DEFAULT CURRENT_TIMESTAMP, victim TEXT, way_of_death TEXT, bastard TEXT, with TEXT, tool_used TEXT)"

sqlite3 /reallyfat/MCServers/green/autobot/database.green.db "INSERT INTO victims (victim, way_of_death, bastard, with, tool_used) VALUES('$invar_victim', '$invar_way_of_death', '$invar_bastard', '$invar_with', '$invar_tool_used')"
