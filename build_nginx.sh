#!/bin/bash

source .tags

docker build . --tag foothub/nginx:latest \

RESULT=$?

if [ $RESULT == 0 ]; then
	docker push foothub/nginx:latest
fi

