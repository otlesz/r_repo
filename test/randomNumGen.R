#Create randomly number generated vectors
#simple statistics
randomNumGen<-function(seed=FALSE){
 
  for(indx in 0:3){
    if(seed) set.seed(6543)
    xTempNorm<-rnorm(100,273.16,15)
  
    summary(xTempNorm)
    print(xTempNorm[5])
  }
  
  for(indx in 0:3){
    if(seed)set.seed(6543)
    xTempUni<-runif(100,240,320)
    print(xTempUni[5])
    
    summary(xTempUni)
    
  }
  
  return(list(xTempNorm=xTempNorm,xTempUni=xTempUni))
}