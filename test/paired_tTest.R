paired_tTest<-function(){

library('uRProgramming')
#heightData<-data.frame(CreateDataFile())
load("/home/zekai/R_workspace/r_repo/lib/uRProgramming/data/heightData.RData")
df<-heightData
t.test(df$Kadin,df$Erkek,paired=TRUE, conf.level=0.95)

#Do it for the chickwts (not equal number of sample)
#data("chickwts")

colNames<-levels(chickwts$feed)
xMatr<-array(NA,c(14,6))

xStats<-array("",c(length(colnames),6))


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
    
    tvalues[rowIndx,ccolIndx]<-t.test(xMatr[,rrowIndx],xMatr[,ccolIndx],paired=TRUE, conf.level=0.95)
    pvals<-tvalues[rowIndx,ccolIndx]$p.value

    pValues[rrowIndx,ccolIndx]<-format(pvals,digits = 1 ,nsmall = 5, justify = "left")

    print (pValues[rrowIndx,ccolIndx])
  }
}


for (rr2owIndx in 1:maxLen){
  for (columnIndx in 1:dim(xMatr)[2]){
    xStats[rr2owIndx,1]<-length(xMatr[,ccolIndx])
    xStats[rr2owIndx,2]<-summary(xMatr[,ccolIndx])[4]
    xStats[rr2owIndx,3]<-summary(xMatr[,ccolIndx])[7]
    xStats[rr2owIndx,4]<-sd(xMatr[,ccolIndx])
   
  }
}



return(list(xMatr=xMatr,pValues=pValues,xStats=xStats))
}