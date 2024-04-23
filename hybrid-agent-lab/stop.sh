#!/bin/bash

ps -ef | grep [j]ava-services.jar | awk '{print $2}' | xargs kill -9 2> /dev/null


