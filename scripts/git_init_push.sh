#!/usr/bin/env bash
set -e
if [ -z "$1" ]; then
  BRANCH="main"
else
  BRANCH="$1"
fi

git init
git add -A
git commit -m "chore: initial import"
git branch -M "$BRANCH"
echo "Now run: git remote add origin <your-repo-url> && git push -u origin $BRANCH"