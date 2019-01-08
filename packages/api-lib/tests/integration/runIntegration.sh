#!/bin/bash
docker-compose up & while ! nc -z $DOCKER_NAME 4571; do sleep 1; done;
sleep 10;
node ./ingestData.js && yarn ava ./tests/integration/test_api.js