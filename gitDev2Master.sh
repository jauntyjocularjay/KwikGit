#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.

git checkout dev
git add .
git commit . -m "preparing to release dev changes to beta"
git push

git checkout beta
git pull
git add .
git commit . -m "preparing to release dev changes to beta"
git merge dev -m "Releasing changes"
git push

git checkout master
git pull
git add .
git commit . -m "preparing to release beta changes to master"
git merge beta -m "Releasing changes"
git push

git checkout dev
