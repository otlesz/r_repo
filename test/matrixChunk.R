matrixChunk<-function(){
  cat('set.seed(312)\n')
  set.seed(312)
  cat('#create 100 random number between 0 and 1000\n')
  cat('xInt<-floor(runif(100,0,1000))\n')
  xInt<-floor(runif(100,0,1000))
  cat('colAVals<-as.integer(xInt[1:10])\n')
  colAVals<-as.integer(xInt[1:10])
  cat('colBVals<-as.integer(xInt[25:35])\n')
  colBVals<-as.integer(xInt[26:35])
  cat('matr<-matrix(c(colAVals,colBVals),nrow=length(colAVals),ncol = 2,dimnames=list(NULL,c("colA","colB"))\n')
  matr<-matrix(c(colAVals,colBVals),nrow=length(colAVals),ncol = 2,dimnames=list(NULL,c("colA","colB"))) 
  
  cat('return(matr)')
  return(matr)
  
}