#!/bin/bash

git branch dev
git branch main
git branch release

# Setting default branch on release, this does not work on Replit
git config --system init.defaultbranch release

# dev is assumed to be the default working branch. 
git checkout dev

echo 'Branches created. If a branch already exists, the other were created.'

echo 'You are now on the dev branch.'
