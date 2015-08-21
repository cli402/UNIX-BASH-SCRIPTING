#! /usr/bin/awk -f

BEGIN{FS=";"}
{
  split($1,Cust,",");
  for(i in Cust){
    for(j in Cust){
      if(Cust[i]!=Cust[j])
        if(check[Cust[i] " " Cust[j]]!=1)
          store[Cust[i]]++;
	  check[Cust[i] " " Cust[j]]=1;
        fi
      fi
    }
  }
}
END{
  for(order in store){
    print order " " store[order];
  }
}

