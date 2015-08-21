#! /bin/bash
cut -d \; -f 1 restaurants.txt|sort|uniq|tr ',' ' '|split -l 1
