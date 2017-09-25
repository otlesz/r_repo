paired_tTest<-function(){

library('uRProgramming')
#heightData<-data.frame(CreateDataFile())
load("C:/Users/otles/OneDrive/Documents/r_repo/lib/uRProgramming/data/heightData.RData")
df<-heightData
t.test(df$Kadin,df$Erkek,paired=TRUE, conf.level=0.95)

#Do it for the chickwts (not equal number of sample)
#data("chickwts")

colNames<-levels(chickwts$feed)
xMatr<-array(NA,c(14,6))



pValues<-array("",c(5,6))

colnames(xMatr)<-colNames
for (colIndx in 1:length(colNames)){
  x<-chickwts[which(as.character(chickwts$feed)==as.character(colNames[colIndx])),]
  x1<-x$weight
  #print("x",x1)
  for (rowIndx in 1:length(x1)){
    
    xMatr[rowIndx,colIndx]<-x1[rowIndx]
  }
  
}

maxLen<-dim(xMatr)[2]-1

for (rrowIndx in 1:maxLen){
  iStart<-rrowIndx+1
  for (ccolIndx in iStart:dim(xMatr)[2]){
    
    pvals<-t.test(xMatr[,rrowIndx],xMatr[,ccolIndx],paired=TRUE, conf.level=0.95)$p.value
    pValues[rrowIndx,ccolIndx]<-format(pvals,digits = 1 ,nsmall = 5, justify = "left")
#    print (pValues[rrowIndx,ccolIndx])
  }
}

return(list(xMatr=xMatr,pValues=pValues))
}