

visitMapDat<-read.csv(file="DFvisit_map",header=FALSE,sep="|")
visScheduleDat<-read.csv(file="dfRvisitScheduleDat.txt",header=FALSE,sep="|")
centerDat<-read.csv(file="center_data.csv",header=TRUE,sep="|")
#create back data file
 write.table(as.matrix(centerDat),file="center_data.csv",sep="|",col.names=TRUE)
rm(list=ls())
library(dfRTools)
data(dfRToolsData)
save(crfPerWkDat,ctCrfsDat,ctQcsDat,ctVisitsDat,plateDat,qcsPerPlatDat,qcsPerSubDat,
	visitMapDat,visScheduleDat,centerDat,mapPlotDat,file="dfRToolsData.rda")
save.image()
dfRvisitSchedule(220,visitMapFile=visitMapDat,dateFormat="d/m/y",isFreqTable=T,latexOrNot=T,demoData=visScheduleDat)

#Output images
#center map
dfRcenterMap(centerDat,outFile="fig1.png",tmpDir=paste(getwd(),"/",sep=""))

 dfRcrfPerWk(crfPerWkDat,isImageSave=TRUE,tmpDir=paste(getwd(),"/",sep="")  )
#save out images to postscript
 postscript(file = "dfRvisitSchedule.ps")
dfRvisitSchedule(220,visitMapFile=visitMapDat,dateFormat="d/m/y",isFreqTable=T,latexOrNot=T,demoData=visScheduleDat,colorPie=TRUE)

#

#to get color images percentageOrNot=FALSE
dfRctQcs(ctQcsDat,percentageOrNot=FALSE)

tmpDir=paste(getwd(),"/",sep="")
dfRctQcs(ctQcsDat,latexOrNot=FALSE,percentageOrNot=TRUE,isImageSave=TRUE,tmpDir=tmpDir)

dfRctQcs(ctQcsDat,percentageOrNot=FALSE,shadedOrNot=c(FALSE,FALSE),secondPlot=TRUE)
dfRctQcs(ctQcsDat,percentageOrNot=FALSE,shadedOrNot=c(FALSE,FALSE),secondPlot=FALSE,isImageSave=TRUE,tmpDir=tmpDir)