#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.


git commit . -m "Releasing changes"
git push

git checkout main
git pull
git merge dev -m "Releasing changes"
git push

git checkout release
git pull
git merge main -m "Releasing changes"
git push

git checkout dev
