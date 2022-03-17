#form a Matrix from dataFrm data
#the purpose of this function to ceate Temp matrix
formMatrix<-function(dataFrm)
{
  monthAsNum<-unique(dataFrm$Month)
  row_Names<-array("",dim=length(unique(dataFrm$Month)))
  for(mIndx in 1:length(monthAsNum)){
    
    row_Names[mIndx]<-switch(as.character(monthAsNum[mIndx]),"5"="May","6"="June","7"="July","8"="Aug","9"="Sep")
  
    
    }
  
  
}