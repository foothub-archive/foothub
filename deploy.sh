#!/bin/bash

source .tags

docker stack deploy -c foothub_stack.yml foothub
