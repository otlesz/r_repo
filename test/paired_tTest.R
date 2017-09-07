paired_tTest<-function(){

library('uRProgramming')
heightData<-data.frame(CreateDataFile())
df<-heightData
t.test(df$Kadin,df$Erkek,paired=TRUE, conf.level=0.95)

#Do it for the chickwts (not equal number of sample)
#data("chickwts")

colNames<-levels(chickwts$feed)
xMatr<-array(NA,c(14,6))
colnames(xMatr)<-colNames
for (colIndx in 1:length(colNames)){
  x<-chickwts[which(as.character(chickwts$feed)==as.character(colNames[colIndx])),]
  x1<-x$weight
  #print("x",x1)
  for (rowIndx in 1:length(x1)){
    
    xMatr[rowIndx,colIndx]<-x1[rowIndx]
  }
  
}
return(xMatr)
}