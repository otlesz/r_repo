xlabel<-"Days"
xaxisOpts<-c(1,30,29,"n")
yaxisOpts<-c(55,105,11,"n")
ylabel<-"Temp(F)"

legendNames=row.names(tempAsMatrix)

colnames(tempAsMatrix)<-seq(1:dim(tempAsMatrix)[2])
matPlotDat<-t(tempAsMatrix)


titleOfPlot="Daily Observation"


matPlotM(matPlotDat,xlab=xlabel,ylab=ylabel,yaxisOpts=yaxisOpts,title=titleOfPlot,leg=legendNames)
#print(out)
#out<-
#matPlotM(matPlotDat,xlab=xlabel,xaxisOpts=xaxisOpts,ylab=ylabel,yaxisOpts=yaxisOpts,title=titleOfPlot,leg=legendNames)
#print(out)