#!/bin/bash

#For live-compiling LaTeX
echo 'Watching' $1;
while inotifywait -e modify $1;
    do pdflatex $1;
done;
