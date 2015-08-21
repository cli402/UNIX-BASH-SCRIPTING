#! /usr/bin/awk -f

BEGIN{FS=";"}
{
  split($1,Cust,",");
  for(i in Cust){
   CustList[$2]= CustList[$2] " " Cust[i];
  }
  
}
END{
  for(Name_rest in CustList){
    split(CustList[Name_rest],ListCust," ");
    for(Name_cust in ListCust){
      Collect[ListCust[Name_cust]]=1;
    }
    Final[Name_rest]= Name_rest":" ;
    for(temp in Collect){
      Final[Name_rest]=Final[Name_rest] " " temp;
    }
    print Final[Name_rest];
    print "\n";
    delete Collect;
  }
}
