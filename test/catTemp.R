#this function take temp data and save categorized format for bar plot
catTemp<-function(matrix=matrix,arrayOfBreaks=arrayOfBreaks,columnNames=columnNames){
  numRows<-dim(matrix)[1]
  catTempMatrx<-array(0,dim=c(numRows,length(columnNames)))
  row.names(catTempMatrx)<-row.names(matrix)
  colnames(catTempMatrx)<-columnNames
  for(index in 1:numRows){
    XHist<-hist(as.numeric(matrix[index,]),plot=FALSE,breaks=arrayOfBreaks)
  #print(index)
   catTempMatrx[index,]<-XHist$counts
    
  }#end of for loop for index
  return(catTempMatrx=catTempMatrx)
}