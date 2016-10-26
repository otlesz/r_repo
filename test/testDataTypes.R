#Simple example for data types
testDataTypes<-function(){
  
  #create logical variable
  iTest<-T
  is.logical(iTest)
  cat(iTest)
  if(iTest ==  is.logical(iTest)) cat("\n Logical \n")
  
#create simple double vector 
  x<-seq(1,100,by=10.011)
  cat(x)
  is.double(x)
  if(iTest ==  is.double(x)) cat("\n x is double Vector \n")
  
  #cast double vector to integer 
  y<-as.integer(x)
  cat(y)
  is.integer(y)
  if(iTest ==  is.integer(y)) cat("\n y is integer Vector \n")
  
  #cast to character vector
  
  z<-as.character(x)
  cat(z)
  is.character(z)
  if(iTest ==  is.character(z)) cat("\n z is character Vector \n")
}