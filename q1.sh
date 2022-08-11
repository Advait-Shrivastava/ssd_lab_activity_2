#!/bin/bash

line_count=$(cat $1 | wc -l)

if [[ $((line_count%2)) == 1 ]]
then
	line_to_print=$(( line_count / 2 + 1 ))

else
	line_to_print=$((line_count / 2))
fi

head -$line_to_print $1 | tail +$line_to_print
