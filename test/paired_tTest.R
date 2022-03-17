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

maxLen<-dim(xMatr)[2]-1
tvalues<-array("",c(maxLen,dim(xMatr)[2]))


xStats<-array("",c(length(colNames),7))
tValues<-array("",c(6,3))

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



for (rrowIndx in 1:maxLen){
  iStart<-rrowIndx+1
  
  for (ccolIndx in iStart:dim(xMatr)[2]){
    
   # tvalues[rowIndx,ccolIndx]
    tValue<-t.test(xMatr[,rrowIndx],xMatr[,ccolIndx],paired=TRUE, conf.level=0.95)
    #pvals<-tvalues[rowIndx,ccolIndx]$p.value
    pvals<-tValue$p.value
    pValues[rrowIndx,ccolIndx]<-format(pvals,digits = 1 ,nsmall = 5, justify = "left")

      rowValues<-paste("rrowIndx=",rrowIndx,sep=" ")
      colValues<-paste("ccolIndx=",ccolIndx,sep=" ")
    print (rowValues)
    print (pValues[rrowIndx,ccolIndx])
  }
  tValues[iStart,1]<-format(tValue$parameter,digits = 2 ,nsmall = 0, justify = "left")
  tValues[iStart,2]<-format(tValue$statistic,digits = 2 ,nsmall = 4, justify = "left")
  tValues[iStart,3]<-format(tValue$p.value,digits = 1 ,nsmall = 4, justify = "left")
  
}




  for (columnIndx in 1:dim(xMatr)[2]){
 #   print(c("columnIndx=",columnIndx))
    rr2owIndx=columnIndx
 #   print(xStats)
    xStats[rr2owIndx,1]<-length(xMatr[,columnIndx])
    xStats[rr2owIndx,2]<-summary(xMatr[,columnIndx])[4]
    xStats[rr2owIndx,3]<-summary(xMatr[,columnIndx])[7]
    xStats[rr2owIndx,4]<-format(sd(xMatr[,columnIndx],na.rm=TRUE),digits = 2 ,nsmall = 2, justify = "left")
    if(rr2owIndx >=2) {
      xStats[rr2owIndx,5]<-tValues[rr2owIndx,1]
      xStats[rr2owIndx,6]<-tValues[rr2owIndx,2]
      xStats[rr2owIndx,7]<-tValues[rr2owIndx,3]
    }
#    print(xStats)
    rownames(xStats)<-colNames
    colnames(xStats)<-c("n","Mean","num Of NA","StdDev","df","t","p-values")
 
} #columnIndx




return(list(xMatr=xMatr,pValues=pValues,xStats=xStats))
}