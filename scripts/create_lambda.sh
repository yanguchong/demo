#!/bin/sh

. ./env.sh

zip -r api-handler.zip ./index.js

awslocal lambda create-function \
    --function-name ${API_NAME} \
    --runtime nodejs8.10 \
    --handler index.handler \
    --memory-size 128 \
    --zip-file fileb://api-handler.zip \
    --role arn:aws:iam::123456:role/irrelevant
 