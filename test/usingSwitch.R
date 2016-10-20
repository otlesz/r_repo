#Simple example for data types
testDataTypes<-function(){
  
  #create logical variable
  iTest<-T
  is.logical(iTest)
  
  if(iTest ==  is.logical(iTest)) cat("Logical \n")
  
#create simple double vector 
  x<-seq(1,100,by=10.011)
  is.double(x)
  if(iTest ==  is.double(x)) cat("x is double Vector \n")
  
  #cast double vector to integer 
  y<-as.integer(x)
  is.integer(y)
  if(iTest ==  is.integer(y)) cat("y is integer Vector \n")
  
  #cast to character vector
  
  z<-as.character(x)
  is.character(z)
  if(iTest ==  is.character(z)) cat("z is character Vector \n")
}