#! /bin/bash
tr ',' '\n' <restaurants.txt | cut -d \; -f 1 | sort|uniq -c|sort -nr| head -10

