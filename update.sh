#!/bin/sh

git status
git diff
git add .
git status
git diff -cached
git commit -m "comment"
git push origin master

