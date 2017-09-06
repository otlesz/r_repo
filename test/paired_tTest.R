library('uRProgramming')
heightData<-data.frame(CreateDataFile())
df<-heightData
t.test(df$Kadin,df$Erkek,paired=TRUE, conf.level=0.95)

#Do it for the chickwts (not equal number of sample)
#data("chickwts")

colNames<-levels(chickwts$feed)


for (colIndx in 1:length(colNames)){
  x<-chickwts[which(as.character(chickwts$feed)==as.character(colNames[colIndx])),]
  if(colIndx == 1)
   dfNew<-x[1]
  else
    dfNew<-cbind(x[1])
}