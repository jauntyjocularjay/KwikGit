#!/bin/bash

git branch dev-jade
git checkout dev-jade
git push --set-upstream origin dev-jade

git branch beta
git checkout beta
git push --set-upstream origin beta

git branch master
git checkout master
git push --set-upstream origin master

git checkout dev-jade

# Setting default branch on master, this does not work on Replit
git config --system init.defaultbranch master

# dev-jade is assumed to be the default working branch. 
git checkout dev-jade

echo 'Branches created. If a branch already exists, the other were created.'

echo 'You are now on the dev-jade branch.'

echo 'What is your GitHub email address? '

read email

echo 'What is your GitHub name? '

read name

git config --global user.email $email
git config --global user.name $name

echo 'Global email and name set.'