#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.


git checkout beta
git pull
git add .
git commit -m "pre-release rebase"
git push

git checkout master
git pull
git merge beta -m "Releasing changes"
git push

git checkout dev
