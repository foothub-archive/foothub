#!/bin/bash

source .tags

docker build . \
	--file Dockerfile \
	--tag foothub/nginx:$NGINX_TAG  \
	--build-arg FRONTEND_TAG=$FRONTEND_TAG \

RESULT=$?

if [ $RESULT == 0 ]; then
	docker push \
		foothub/nginx:$NGINX_TAG
fi

