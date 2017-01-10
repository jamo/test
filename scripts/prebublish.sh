#!/bin/bash -e
if [ "$TRAVIS_BRANCH" = "master" -a "$TRAVIS_PULL_REQUEST" = "false" ]; then
  echo "Deploying"
  cat package.json |jq '.version = .version + "-" + $SHA | .name = "nottest-nottest-nottest-nottest-nottest-nottest-nottest" ' --arg SHA `git rev-parse --short=5 HEAD` > package.json
  npm config set //registry.npmjs.org/:_authToken $NPM_TOKEN
  npm publish --tag next
else
  echo "Not on master or PR -> skipping deploy"
fi
