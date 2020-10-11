#!/bin/sh
javac RandomTest.java
for((i=10;i<50;i+=10))
do
	echo For numRandoms = $i
	passRate=0
	for((j=1; j<101; j++))
	do
		if [[ $(java RandomTest $i) == "PASS" ]]
		then
			((passRate++))
		fi
	done
	echo pass rate =  $passRate
done
/bin/rm -rf *.class
