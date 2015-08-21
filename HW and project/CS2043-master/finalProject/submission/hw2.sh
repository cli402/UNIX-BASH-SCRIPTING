#!/bin/bash

day=`date|cut -d ' ' -f 3 -s`
echo "$day>15"|bc -l|mail -s "Payday yet?" -r knight951753@gmail.com knight951753@gmail.com

day='date +%a'
grep $day weekly.text|cut -d":" -f 2|mail -s "Today's task" knight951753@gmail

paste -d"\n" one.txt two.txt

wget http://www.cs.cornell.edu/Courses/cs2043/2014sp/cs2043-students.tgz
tar -xzf  cs2043-students.tgz
grep -r "#" ./cs/ |sed 's/.*\///'|cut -d":" -f 1  > ./cs/straighA
find ./cs -type f -exec cp {} ./all \;

wget https://www.cs.cmu.edu/~enron/enron mail 20110402.tgz
tar -xzf enron\ mail\  20110402.tgz
grep '\(from\)\|\(From\)\|\(FROM\)' mail | cut -d":" -f 2|sed 's/^ *//' >maillist.txt
grep -o '[[:alpha:]]\+,[[:alpha:]]\+;' restaurants.txt | grep -o '^[[:alpha:]]\+'
cat phone-data.txt |head -10|sed 's/[[:alpha:]]\+[[:space:]]\+//'|tr ',' '\n'|sed 's/^[[:space:]]\+//g'


#rename the file in the directory
ls *.txt | while read LINE ; do name=$(echo $LINE |\
sed ’s/txt/text/’ ); mv -v "$LINE" "$(name)" ; done
