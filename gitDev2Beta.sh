#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.

git checkout dev
git pull
git add .
git commit -a -m "preparing to release changes from dev to beta"
git push

git checkout beta
git pull
git add .
git commit . -m "preparing to release dev changes to beta"
git merge dev -m "releasing changes from dev to beta"
git push

git checkout dev
