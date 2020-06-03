#!/bin/bash

message=$1
docker exec green rcon-cli --port 25579 --password minecraft "say $message" 
