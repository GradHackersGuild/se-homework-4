#!/bin/bash

grep -l "sample" file* | \
xargs grep -o "CSC510" | \
sort | \
uniq -c | \
grep -v "^ *[0-2] " | \
cut -d: -f1 | \
sed 's/^ *//' | \
gawk '{cmd="ls -l " $2 " | cut -d\" \" -f5"; cmd | getline size; close(cmd); print $1, $2, size}' | \
sort -k1,1nr -k3,3nr | \
gawk '{print $2}' | \
sed 's/file_/filtered_/'
