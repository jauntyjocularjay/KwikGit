#!/bin/bash

git stash

git checkout dev
git pull

git checkout master
git pull

git checkout beta
git pull

git checkout dev
git pull

read -r -p "Enter your dev branch to update or press ctrl+c to exit: " devBranch
git merge $devBranch dev

git checkout $devBranch
git pull

echo "Done, you are now on $devBranch."

