#Simple example for data types casting using swith statement
usingSwitch<-function(x,dataTypes){
  
  switch (dataTypes,
    integer = {x<-as.integer(x)},
    double = {x<-as.doubles(x)},
    character = {x<-as.character(x)}
  
  )
  
}