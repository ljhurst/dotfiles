#!/bin/bash

git branch --merged=main | grep -v main | xargs -r git branch -d
git fetch --prune
