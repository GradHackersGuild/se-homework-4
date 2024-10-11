#!/bin/bash

gawk -F, '$3 == 2 && $13 == "S" { print }' titanic.csv | \

sed s'/female/F/; s/male/M/' | \

awk -F, '{ print $0; if ($7 != "") { sum += $7; count++ } } END { print "Average age: " sum / count }'
