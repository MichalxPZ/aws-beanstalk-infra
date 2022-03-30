#!/bin/bash

deploy() {
  aws cloudformation deploy --template-file infra/beanstalk.yaml \
    --stack-name aws-elasticbeanstalk-zielmi \
    --capabilities CAPABILITY_IAM CAPABILITY_NAMED_IAM
}

case "$1" in
  "deploy") deploy ;;
esac