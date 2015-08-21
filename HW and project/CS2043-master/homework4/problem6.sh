#! /bin/bash

./problem3.awk restaurants.txt | wc -l
./problem5.awk restaurants.txt | awk '{sum+=$2} END{print sum}'
