#! /bin/bash
tr 'A-Z' 'a-z' <Frankenstein.txt|head -298|tail -43|tr ' ' '\n'|tr -cd 'a-zA-Z\n'|sort|uniq -c|sort -nr|head -10
