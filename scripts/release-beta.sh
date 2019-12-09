#!/usr/bin/env bash

TAG_NAME=v$(npx -c 'echo "$npm_package_version"')

echo "--------------"
echo "CIRCLE_BUILD_URL: $CIRCLE_BUILD_URL"
echo "CIRCLE_COMPARE_URL: $CIRCLE_COMPARE_URL"
echo "CIRCLE_JOB: $CIRCLE_JOB"
echo "CIRCLE_PR_NUMBER: $CIRCLE_PR_NUMBER"
echo "CIRCLE_SHA1: $CIRCLE_SHA1"
echo "CIRCLE_USERNAME: $CIRCLE_USERNAME"
echo "--------------"

git config user.email "tatsuya.howdy@gmail.com"
git config user.name "howdy39"

rm -Rf dist

yarn run build
cat dist/piyo.txt
git add dist
git commit -m "${CIRCLE_PR_USERNAME} の ${CIRCLE_BUILD_URL} の変更をマージしました by CircleCI"

git push origin dashboard-renewal:beta --force