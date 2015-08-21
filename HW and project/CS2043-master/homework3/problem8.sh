#! /bin/bash
tr ' ' '\n'<toTest | sed 's/[^A-Za-z]//' | grep -vxif dic.txt
