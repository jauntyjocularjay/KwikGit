#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.

git checkout dev-jade
git pull
git add .
git commit -a -m "Releasing changes to dev"
git push

git checkout dev
git pull
git merge dev-jade -m "Releasing changes to dev"
git push

git checkout dev-jade
