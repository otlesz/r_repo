#Create randomly number generated vectors
#simple statistics
randomNumGen<-function(seed=FALSE){
 print("Normally distributed Random Number")
  for(indx in 0:3){
    print(paste("Iteration ",indx,sep= ""))
    if(seed) set.seed(6543)
    xTempNorm<-rnorm(100,273.16,15)

    print(paste("xTempNorm[5]=",xTempNorm[5]))
    cat('summary(xTempNorm)\n')
    print(summary(xTempNorm))
    
  }
  
  print("Uniformly distributed Random Number")
  for(indx in 0:3){
    if(seed)set.seed(6543)
    xTempUni<-runif(100,240,320)
    print(paste("Iteration ",indx,sep= ""))
    print(paste("xTempUni[5]=",xTempUni[5]))
    cat('summary(xTempUni)\n')
    #
    
    print(summary(xTempUni))
    
  }
  
#  return(list(xTempNorm=xTempNorm,xTempUni=xTempUni))
}