#!/home/chengwei/anaconda/bin/python
__author__ = 'chengwei'
import sys
In = open(sys.argv[2],'r')
input_line=In.readlines()
list={}
for i in input_line:
    names=i.split(';')[0].strip().split(',')
    for key1 in names:
        list.setdefault(key1,{})
        for key2 in names:
            if key1 != key2:
                if list[key1].has_key(key2)!=True:
                    list[key1][key2]=1

print "Done buiding Adjacent list"


##get the parameter and initialize the dict
search_name=sys.argv[1]
visited={}

##initialized the queue
queue=[]
queue.append(search_name)
visited[search_name]=0

for init in list[search_name]:
    queue.append(init)
    visited[init]=1

##begin the loop
while len(queue)!=0:
    name= queue.pop(0)
    for name_friend in list[name]:
        if name_friend not in visited:
            visited[name_friend]=visited[name]+1
            queue.append(name_friend)

print visited