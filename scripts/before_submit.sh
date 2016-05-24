#!/bin/bash

# Where are we running this?
echo Checking for tabs, TODO\'s and FIXME\'s in $1

#This script performs a search that:
#   Is recursive through subdirectories
#   Prints only filenames of matches
#   Ignores binary files

# Search for tabs in source files
grep -rlI '	' $1

# Search for TODO's and FIXME's
grep -rlI 'TODO' $1
grep -rlI 'FIXME' $1
