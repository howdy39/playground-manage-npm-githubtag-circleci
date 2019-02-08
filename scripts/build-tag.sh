#!/usr/bin/env bash

echo "--------------"
echo "CIRCLE_TAG: $CIRCLE_TAG"
echo "--------------"

git config user.email "tatsuya.howdy@gmail.com"
git config user.name "howdy39"

git checkout $CIRCLE_TAG
git tag -d $CIRCLE_TAG
git push origin :refs/tags/$CIRCLE_TAG

yarn run build
git add dist
git commit -m "build $CIRCLE_TAG by CirclieCI"

git tag $CIRCLE_TAG
git push origin $CIRCLE_TAG