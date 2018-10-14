#!/bin/bash

source .tags

if [ -z ${DJANGO_SECRET+x} ]; then
	echo "DJANGO_SECRET is not set"
else
	docker stack deploy -c foothub_stack.yml foothub
fi
