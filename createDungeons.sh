#!/bin/bash
if test -d dungeons; then
	/bin/rm -fr dungeons
fi
mkdir dungeons
cd dungeons
prevOutput=.
for((j=0; j<10; j++))
do
	output=$(find . -name "folder$j")
	if [[ $output == "" ]]
	then
		mkdir $prevOutput/folder$j
		prevOutput=$(find . -name folder$j)
	fi
done
