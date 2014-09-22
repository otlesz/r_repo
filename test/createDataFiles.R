## Copyright (C) 2009 Frontier Science & Technology
##
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by the
## Free Software Foundation; either version 2, or (at your option) any
## later version.
##
## These functions are distributed in the hope that they will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## The text of the GNU General Public License, version 2, is available
## as http://www.gnu.org/copyleft or by writing to the Free Software
## Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#

#functionality
#This function written by FIRST AND LAST NAME <e-mail address>
#Date of function first written
#Zekai Otles otles@fstrf-wi.org

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