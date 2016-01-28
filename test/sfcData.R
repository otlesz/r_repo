synPlot<-function(){
#Reading synoptic Data what Mediha @DMI
SGokcen07Haz2010<-read.csv(file="07Haziran2010_s.gokcen.csv",skip=3,header=TRUE,sep=",")
Edirne11Eyl2009<-read.csv(file="11Eylul2009_Edirne.csv",skip=3,header=TRUE,sep=",")
Kirklareli11Eyl2009<-read.csv(file="11Eylul2009_kirklareli.csv",skip=3,header=TRUE,sep=",")
Sariyer11Eyl2009<-read.csv(file="11Eylul2009_sariyer.csv",skip=3,header=TRUE,sep=",")
Tekirdag11Eyl2009<-read.csv(file="11Eylul2009_tekirdag.csv",skip=3,header=TRUE,sep=",")
Edirne12Eyl2009<-read.csv(file="12Eylul2009_Edirne.csv",skip=3,header=TRUE,sep=",")
Kirklareli12Eyl2009<-read.csv(file="12Eylul2009_kirklareli.csv",skip=3,header=TRUE,sep=",")
Sariyer12Eyl2009<-read.csv(file="12Eylul2009_sariyer.csv",skip=3,header=TRUE,sep=",")
Tekirdag12Eyl2009<-read.csv(file="12Eylul2009_tekirdag.csv",skip=3,header=TRUE,sep=",")
Ankara15Haz2011<-read.csv(file="15Haziran2011_Ankara.csv",skip=3,header=TRUE,sep=",")
Antalya16Ara2010<-read.csv(file="16Aralik2010_antalya.csv",skip=3,header=TRUE,sep=",")
Ankara16Haz2011<-read.csv(file="16Haziran2011_Ankara.csv",skip=3,header=TRUE,sep=",")
Antalya17Ara2010<-read.csv(file="17Aralik2010_antalya.csv",skip=3,header=TRUE,sep=",")
Sariyer22Haz2010<-read.csv(file="22Haziran2010_sariyer.csv",skip=3,header=TRUE,sep=",")
SGokcen23Haz2010<-read.csv(file="22Haziran2010_s.gokcen.csv",skip=3,header=TRUE,sep=",")
Kocaeli23Haz2010<-read.csv(file="23Haziran2010_kocaeli.csv",skip=3,header=TRUE,sep=",")
Bodrum27Ocak2011<-read.csv(file="27Ocak2011_bodrum.csv",skip=3,header=TRUE,sep=",")
Mugla27Ocak2011<-read.csv(file="27Ocak2011_mugla.csv",skip=3,header=TRUE,sep=",")
Sariyer29Haz2010<-read.csv(file="29Haziran2010_sariyer.csv",skip=3,header=TRUE,sep=",")
SGokcen29Haz2010<-read.csv(file="29Haziran2010_s.gokcen.csv",skip=3,header=TRUE,sep=",")

df1<-cbind(sta="SGokcen",date="07Haz2010",SGokcen07Haz2010)
df<-rbind(df1,cbind(sta="SGokcen",date="23Haz2010",SGokcen23Haz2010))
df<-rbind(df,cbind(sta="SGokcen",date="29Haz2010",SGokcen29Haz2010))
df<-rbind(df,cbind(sta="Kocaeli",date="23Haz2010",Kocaeli23Haz2010))
df<-rbind(df,cbind(sta="Edirne",date="11Eyl2009",Edirne11Eyl2009))
df<-rbind(df,cbind(sta="Edirne",date="12Eyl2009",Edirne12Eyl2009))
df<-rbind(df,cbind(sta="Kirklareli",date="11Eyl2009",Kirklareli11Eyl2009))
df<-rbind(df,cbind(sta="Kirklareli",date="12Eyl2009",Kirklareli12Eyl2009))
df<-rbind(df,cbind(sta="Sariyer",date="11Eyl2009",Sariyer11Eyl2009))
df<-rbind(df,cbind(sta="Sariyer",date="12Eyl2009",Sariyer12Eyl2009))
df<-rbind(df,cbind(sta="Sariyer",date="22Haz2010",Sariyer22Haz2010))
df<-rbind(df,cbind(sta="Sariyer",date="29Haz2010",Sariyer29Haz2010))
df<-rbind(df,cbind(sta="Tekirdag",date="11Eyl2009",Tekirdag11Eyl2009))
df<-rbind(df,cbind(sta="Tekirdag",date="12Eyl2009",Tekirdag12Eyl2009))
df<-rbind(df,cbind(sta="Ankara",date="15Haz2011",Ankara15Haz2011))
df<-rbind(df,cbind(sta="Ankara",date="16Haz2011",Ankara16Haz2011))
df<-rbind(df,cbind(sta="Antalya",date="16Ara2010",Antalya16Ara2010))
df<-rbind(df,cbind(sta="Antalya",date="17Ara2010",Antalya17Ara2010))
df<-rbind(df,cbind(sta="Bodrum",date="27Ocak2011",Bodrum27Ocak2011))
df<-rbind(df,cbind(sta="Mugla",date="27Ocak2011",Mugla27Ocak2011))

require("tcltk")
source("dfRmatPlotM.R")
source("dfRlegend.R")
fname<-file(tk_choose.files())
#synDat<-read.csv(fname,header=TRUE,skip=3,sep=",")
pdf("outputFile.pdf")
layout(matrix(c(1,2,3,4), 2, 2, byrow = TRUE))
selectVars<-c("X4P","RRR","Rh","T","Td")
vars<-c("sea-level pres (mb)","Precip (mm)","RH (%)","Temp (C)","Dew Point Temp (C)" )

#this will go over number of station data
for (iStaIndx in 1:length(levels(df$sta))){
iFoundSta=levels(df$sta)[iStaIndx]

print(paste("station",iFoundSta,sep="="))

#this part will go over each available date for the station
nDates<-length(unique(subset(df,sta==levels(df$sta)[iStaIndx])$date))

for (iDateIndx in 1:nDates){
iFoundDate<-unique(subset(df,sta==levels(df$sta)[iStaIndx])$date)[iDateIndx]

print(paste("date",iFoundDate,sep="="))
synDat<-subset(df,sta==as.character(iFoundSta) & date==as.character(iFoundDate))




for (iPlotIndx in 1:4) {
  
    titlex<-paste(as.character(unique(synDat[["sta"]])),
                 as.character(unique(synDat[["date"]])),sep="    ")
#    titlex<-paste(titlex,vars[iPlotIndx],sep='\n')

    print(titlex)
    print(selectVars[iPlotIndx])
   if (iPlotIndx<= 3){
     y<-synDat[[selectVars[iPlotIndx] ]]
    print(y)
     if(!unique(is.na(y))){ plot(synDat$GMT,y,xlab="GMT",ylab=vars[iPlotIndx],main=vars[iPlotIndx])
    }else{
        plot.new()
      }
        
   }else{
     xlabel<-"GMT"
    xaxisOpts<-c(0,22,2,"n")
    yaxisOpts<-c(12,28,4,"n")
    ylabel<-"Temp(C)"
  legendNames=c("T","Td")
  matPlotDat<-synDat[,c("GMT","T","Td")]
  rownames(matPlotDat)<-matPlotDat[,1]

  
   dfRmatPlotM(matPlotDat,xlab=xlabel,xaxisOpts=xaxisOpts,ylab=ylabel,yaxisOpts=yaxisOpts,title=NULL,leg=legendNames)


   }
    

    

 
}#end of iPlotIndx
title(titlex,outer=TRUE)



}#end of iDateIndx
}#end of iStaIndx
dev.off()




}#end of function synopPlots
