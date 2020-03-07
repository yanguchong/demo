#!/bin/sh

. ./env.sh

awslocal lambda invoke --function-name ${API_NAME} out