#!/bin/bash

/reallyfat/MCServers/green/autobot/send_message.sh "As you wish."
docker exec green rcon-cli --port 25579 --password minecraft time set 0
