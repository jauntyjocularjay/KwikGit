#!/bin/bash

echo "Which branch do you want to delete?"

read -r -p  "Enter commit message: " branch

git branch -d $branch

git push origin -d $branch