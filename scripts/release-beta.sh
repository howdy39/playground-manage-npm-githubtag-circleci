#!/usr/bin/env bash

TAG_NAME=v$(npx -c 'echo "$npm_package_version"')

echo "--------------"
echo "CIRCLE_SHA1: $CIRCLE_SHA1"
echo "--------------"

git config user.email "tatsuya.howdy@gmail.com"
git config user.name "howdy39"

git checkout beta
git merge origin dashboard-renewal

rm -Rf dist
git commit -m "ビルド結果を削除 by CircleCI"

yarn run build
git add dist
git commit -m "ビルド結果を登録 by CircleCI"

git push