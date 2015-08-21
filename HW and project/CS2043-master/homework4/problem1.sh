#! /bin/bash
awk '{print rand(),$0}' log.txt | sort -t ' ' -k 1 |awk '{print $2,$3,$4}'

