#form a Matrix from dataFrm data
#the purpose of this function to ceate Temp matrix
formTempMatrix<-function(dataFrm)
{
  monthAsNum<-unique(dataFrm$Month)
  row_Names<-array("",dim=length(unique(dataFrm$Month)))
  tempAsMatrix<-matrix("",nrow=length(unique(dataFrm$Month)),ncol=30)
  
  
  for(mIndx in 1:length(monthAsNum)){
    row_Names[mIndx]<-switch(as.character(monthAsNum[mIndx]),"5"="May","6"="June","7"="July","8"="Aug","9"="Sep")
  }
  row.names(tempAsMatrix)<-row_Names
    
  length(unique(dataFrm$Month))
  rowIndex<-unique(dataFrm$Month)
  for (index in 1:length(rowIndex)){
    
    
    
    x<-dataFrm$Temp[dataFrm$Month==rowIndex[index]]
    tempAsMatrix[index,]<-x[1:30]
  }
 
  return(tempAsMatrix)
}