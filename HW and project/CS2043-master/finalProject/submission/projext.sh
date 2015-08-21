#!/bin/bash
IFS=$'\n'

array1=($(curl http://www.movies.com/rss-feeds/top-ten-box-office-rss  | grep '<title><![CDATA[[[:digit:]]\+\.'\
		| sed 's/<title><!\[CDATA\[//g'|sed 's/\]\]><\/title>//g' | sed 's/^ *//' ))
array2=($(curl http://www.movies.com/rss-feeds/top-ten-box-office-rss  |  grep '<description>' \
	| sed 's/<description><!\[CDATA\[//' |sed 's/\]\]><\/description>//'|tail -10))

while [ 1 -eq 1 ]
do 
	for i in ${array1[*]}
	do 
		echo $i
	done
	echo ""
	read -p "CHOOSE a movie (1-10)> " type
	case $type in
		[1-9])
		echo "Moive $type"
		echo "Synopsis:"
		echo ${array2[$(($type-1))]}
		;;
		10)
		echo "Moive $type"
		echo "Synopsis:"
		echo ${array2[$(($type-1))]}
		;;
		*)
		echo "No synopsis"
		;;
		esac
		echo ""

	finalInput=" "
	while [ $finalInput != "\n" ]
	do
	read -p "Press enter to return to the main menu" finalInput
	done

	clear
done