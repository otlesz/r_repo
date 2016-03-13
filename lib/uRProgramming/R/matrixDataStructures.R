matrixDataStructures<-function(chunk=chunk){
  if(chunk == 1){
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
  
  } else if(chunk == 2 ){
    cat('data(mtcars)')
    data(mtcars)
    cat('for (rowIndx in 2:dim(mtcars)[1]){\n')
    cat('\t for (colIndx in 1:dim(mtcars)[2]){\n')
    cat('\t \t if(colIndx ==1){mpgValues[rowIbdx-1]<-mtcars[rowIndx,2]}\n')
    cat('\t}\n')
    cat('\n')
    for (rowIndx in 2:dim(mtcars)[1]){
     
      for (colIndx in 1:dim(mtcars)[2]){
        cat('if(colIndx ==1){mpgValues<-mtcars[rowIndx,2]}\n')
        if(colIndx ==1){mpgValues[rowIndx-1]<-mtcars[rowIndx,2]}
      }
    }
    
    matr<-mtCars
  } else if (chunk == 3) {
    cat('test chunk 3')
    
  }
  
  return(matr)
  
}