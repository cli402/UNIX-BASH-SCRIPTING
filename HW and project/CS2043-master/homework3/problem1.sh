#~ /bin/bash

day=`date|cut -d ' ' -f 3 -s`
echo "$day>15"|bc -l
