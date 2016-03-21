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
    cat('\n\ndata(mtcars)\n')
    data(mtcars)
    cat('mpgVals<-array("",dim=dim(mtcars)[1]\n')
    cat('for (rowIndx in 2:dim(mtcars)[1]){\n')
    cat('\t for (colIndx in 1:dim(mtcars)[2]){\n')
    
    cat('\t \t if(colIndx ==1){mpgVals[rowIndx-1]<-mtcars[rowIndx,2]}\n')
    cat('\t}\n')
    cat('\n')
    
    
    mpgVals<-array('',dim=dim(mtcars)[1])
    for (rowIndx in 2:dim(mtcars)[1]){
     
      for (colIndx in 1:dim(mtcars)[2]){
       
        if(colIndx ==1){mpgVals[rowIndx-1]<-mtcars[rowIndx,2]}
      }
    }
    cat('print every 4th element \n')
    cat('print(mpgVals[seq(1,length(mpgVals),4)])\n')
    print(mpgVals[seq(1,length(mpgVals),4)])
    cat('matr<-as.matrix(mtcars)\n')
    matr<-as.matrix(mtcars)
  } else if (chunk == 3) {
    
    cat('\n\ndata(mtcars)\n')
    data(mtcars)
    cat('matrx<-as.matrix(mtcars)\n')
    matrx<-as.matrix(mtcars)
    cat('merc<-matrx[ which(rownames(matrx)=="Merc 450SE"),]\n')
    cat('print(merc)\n')
    
    merc<-matrx[ which(rownames(matrx)=='Merc 450SE'),]
    cat('colSums(matr)\n')
    cat('colMeans(matr)\n')
    cat('matr<-rbind(colSums(matrx),colMeans(matrx))\n')
    matr<-rbind(colSums(matrx),colMeans(matrx))
    
  }
  
  return(matr)
  
}