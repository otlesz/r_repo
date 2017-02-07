#demonstate the list
useList<-function(dataFrm,row_Names,tempAsMatrix){
  aList<-list(dataFrm=dataFrm,rowNames=row_Names,matrix=tempAsMatrix)
  str(aList)
  return(aList)
  
}