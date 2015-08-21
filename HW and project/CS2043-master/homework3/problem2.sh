#! /bin/bash

day=`date +%A`
grep $day weekly.txt | cut -d : -f 2 -s | sed 's/^ *//'
