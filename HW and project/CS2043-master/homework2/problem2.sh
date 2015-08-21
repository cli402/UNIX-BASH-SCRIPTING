#! /bin/bash
cut -d \; -f 2 <restaurants.txt|sort|uniq -c|sort -nr|head -10
