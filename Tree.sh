#! /bin/bash

ls>/tmp/ls1.txt

while read -r line; do
    if [[ -d $line ]]
	then
  	echo "$line"
	ls $line/>/tmp/ls2.txt
	while read -r lines; do
  		echo "    |___$lines"
		done </tmp/ls2.txt
    	else
	echo "$line"
	fi
done </tmp/ls1.txt


