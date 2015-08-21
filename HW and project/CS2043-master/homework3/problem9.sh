#! /bin/bash
grep -o '[[:alpha:]]\+,[[:alpha:]]\+;' restaurants.txt | grep -o '^[[:alpha:]]\+'
