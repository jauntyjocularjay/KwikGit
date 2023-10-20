#!/bin/bash
# This should be run only after verifying the branch passes its unit tests.


git commit . -m "Releasing changes"
git push

git checkout -m "Releasing changes" main
git merge dev

git checkout -m "Releasing changes" release
git merge main

git checkout -m "Releasing changes" dev
