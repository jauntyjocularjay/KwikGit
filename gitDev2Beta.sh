#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.

git checkout dev-jade
git pull
git add .
git commit -a -m "Releasing changes to beta"
git push

git checkout beta
git pull
git merge dev-jade -m "Releasing changes to beta"
git push

git checkout dev-jade
