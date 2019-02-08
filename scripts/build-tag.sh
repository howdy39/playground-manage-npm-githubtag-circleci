#!/usr/bin/env bash

TAG=v1.0.2

git config user.email "tatsuya.howdy@gmail.com"
git config user.name "howdy39"

git reset --hard HEAD
git checkout $TAG
git tag -d $TAG
git push origin :refs/tags/$TAG

yarn run build
git add dist
git commit -m "build $TAG by CI"

git tag $TAG
git push origin $TAG