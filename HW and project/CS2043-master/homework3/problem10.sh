#! /bin/bash

sed 's/[[:alpha:]]\+//' phone-data.txt | sed 's/[[:space:]]\+//'|tr ',' '\n'

