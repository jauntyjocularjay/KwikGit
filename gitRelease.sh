#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.


git commit . -m "Releasing changes"
git push

git checkout main -m "Releasing changes"
git merge dev

git checkout release -m "Releasing changes"
git merge main

git checkout dev -m "Releasing changes"