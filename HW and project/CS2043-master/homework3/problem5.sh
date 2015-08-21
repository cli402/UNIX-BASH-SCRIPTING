#! /bin/bash

grep -r '#' ./cs/ | sed 's/.*\///'| cut -d : -f 1 -s
