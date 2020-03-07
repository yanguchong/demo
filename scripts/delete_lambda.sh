#!/bin/sh

. ./env.sh

awslocal lambda delete-function --function-name ${API_NAME}