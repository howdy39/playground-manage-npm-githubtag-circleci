#!/usr/bin/env bash

TAG_NAME=$(npx -c 'echo "$npm_package_version"')

echo "--------------"
echo "TAG_NAME: $TAG_NAME"
echo "--------------"


git config user.email "tatsuya.howdy@gmail.com"
git config user.name "howdy39"

git checkout master
yarn run build
git add dist
git commit -m "build $TAG_NAME by CircleCI"

git tag $TAG_NAME
git push origin $TAG_NAME