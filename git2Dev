#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.

read -r -p "Enter the name of your working branch: " devBranch 

git checkout $devBranch
git pull
git add .
git commit -a -m "preparing to release changes to dev"
git push

git checkout dev
git pull
git merge $devBranch -m "Releasing changes from $devBranch to dev"
git push

git checkout $devBranch
