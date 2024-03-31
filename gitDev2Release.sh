#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.


git commit . -m "Releasing changes"
git push

git checkout beta
git pull
git merge dev-jade -m "Releasing changes"
git push

git checkout release
git pull
git merge beta -m "Releasing changes"
git push

git checkout dev-jade
