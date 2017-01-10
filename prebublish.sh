#!/bin/bash -e
if [ "$TRAVIS_BRANCH" = "master" -a "$TRAVIS_PULL_REQUEST" = "false" ]; then
  echo "Deploying"
  env
else
  echo "Not on master or PR or java8 -> skipping deploy"
fi
