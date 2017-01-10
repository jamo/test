#!/bin/bash -e
if [ "$TRAVIS_BRANCH" = "master" -a "$TRAVIS_PULL_REQUEST" = "false" ]; then
  echo "Deploying"
else
  echo "Not on master or PR -> skipping deploy"
fi
env
