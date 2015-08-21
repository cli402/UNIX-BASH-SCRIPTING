#! /bin/bash
grep '\(From\)\|\(from\)\|\(FROM\)' mail | cut -d : -f 2 | sed 's/^ *//'

