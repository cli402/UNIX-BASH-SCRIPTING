#! /usr/bin/awk -f

BEGIN{FS=";"}
{
  split($1,Cust,",");
  # for(i in Cust){
  #   for(j in Cust){
  #     if(Cust[i]<Cust[j])
  #       store[Cust[i] " " Cust[j]]=1;
  #     fi
  #   }
  # }
  for (i in Cust){
    print i;
  }
  #print Cust;  
}
END{
  # for(order in store){
  #   print order " ";
  # }
}