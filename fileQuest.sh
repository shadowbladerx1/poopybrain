cd ~
IFS=$'\n'
for f in $(find . -type f -name *.java -print)
do
	wc -l "$f"
done | sort -rn | sed '11, $d'

unset IFS
