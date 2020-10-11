#!/bin/bash
if test -d forest; then
	/bin/rm -rf forest
fi
mkdir forest
cd forest
for ((i=0; i<200; i++))
do
	echo "Creating folder $i"
	mkdir folder$i
done
