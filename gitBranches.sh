#!/bin/bash

git branch dev
git checkout dev
git push --set-upstream origin dev

git branch main
git checkout main
git push --set-upstream origin main

git branch release
git checkout release
git push --set-upstream origin release

git checkout dev

# Setting default branch on release, this does not work on Replit
git config --system init.defaultbranch release

# dev is assumed to be the default working branch. 
git checkout dev

echo 'Branches created. If a branch already exists, the other were created.'

echo 'You are now on the dev branch.'

echo 'What is your GitHub email address? '

read email

echo 'What is your GitHub name? '

read name

git config --global user.email $email
git config --global user.name $name

echo 'Global email and name set.'