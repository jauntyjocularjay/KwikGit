#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.

git checkout dev
git pull
git add .
git commit -a -m "preparing to release changes from dev to dev"
git push

git checkout dev
git pull
git merge dev -m "Releasing changes from dev to dev"
git push

git checkout dev
