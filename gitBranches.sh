#!/bin/bash

git branch dev
git checkout dev
git push --set-upstream origin dev

git branch beta
git checkout beta
git push --set-upstream origin beta

git branch master
git checkout master
git push --set-upstream origin master

git checkout dev

# Setting default branch on master, this does not work on Replit
git config --system init.defaultbranch master

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