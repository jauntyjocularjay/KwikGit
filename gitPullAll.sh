#!/bin/bash

read -r -p  "Enter commit message: " message
git add .
git commit -m "$message"
git push

git checkout master
git pull

git checkout beta
git pull

git checkout dev
git pull

read -r -p "Enter your dev branch to update or press ctrl+c to exit: " devBranch
git merge $devBranch dev

git checkout $devBranch

echo "Done, you are now on $devBranch."

