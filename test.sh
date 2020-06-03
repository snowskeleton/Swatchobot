#!/bin/bash
 sqlite3 /reallyfat/MCServers/green/autobot/database.deaths.db "CREATE TABLE IF NOT EXISTS victims(victim TEXT, way_of_death TEXT, bastard TEXT, tool_used TEXT, times_died INT, PRIMARY KEY(victim, way_of_death))"  
