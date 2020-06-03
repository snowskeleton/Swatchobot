#!/bin/bash

	message_number=$RANDOM
	RANGE=5
	let "message_number %= $RANGE"

case $message_number in
	1)
	you_died_by_lava="Try not to touch hot things."
	;;
	2)
	you_died_by_lava="You're not very good at this, are you?"
	;;
	3)
	you_died_by_lava="Try swimming in water next time."
	;;
	4)
	you_died_by_lava="Swimming in lava will expose you to lava, a substance known to the State of California to cause cancer, birth defects, or other reproductive harm."
	;;
esac

docker exec green rcon-cli --port 25579 --password minecraft say "$you_died_by_lava"
