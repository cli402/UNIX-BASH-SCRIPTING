#! /usr/bin/awk -f
BEGIN{FS=";"}
/Beula/{
split($1,Cust,",");
Collect = Collect " " Cust[(length(Cust)-1)];
}
END{
split(Collect,Final," ");
output= "Beula:";
for(temp in Final){
  if(Final[temp] == "Beula")
    count_Beula++;
  count_total++;
  output= output " " Final[temp]; 
}
print output;
print "Beula paid " count_Beula "/" count_total " times";
}
