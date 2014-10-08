\name{matPlotM}
\alias{matPlotM}
\title{Creates multiple y-lines with x axis} 
\description{this function creates  
  multiple y-lines produces given matrix input, first column of the
  matrix indicates the x-values of the plot, remainder of the columns
  indicates desired y-line values
}
\usage{
 matPlotM(shMatrix=sshMatrix,xlab=xLabel,ylab=yLabel,title=titleOfPlot,leg=legendsNames)
}
\arguments{
\item{shMatrix}{Matrix input, first column is x-values, other columns
  are y-values}
\item{xlab}{xlab is x-axis label }
\item{xaxisOpts}{xaxisOpts is an array gives xaxislimist, tick and plot options for the tick }
\item{ylab}{ylab is  y-axis label}
\item{yaxisOpts}{yaxisOpts is an array gives yaxislimist, tick and plot options for the tick }
\item{title}{Title of the plot}
\item{leg}{legend  of the y-lines}
}
\author{ZekaiOtles}

\examples{
 xlabel<-"GMT"
    xaxisOpts<-c(0,22,2,"n")
    yaxisOpts<-c(12,28,4,"n")
    ylabel<-"Temp(C)"
  legendNames=c("T","Td")
  matPlotDat<-synDat[,c("GMT","T","Td")]
  rownames(matPlotDat)<-matPlotDat[,1]
  titleOfPlot="Daily Observation"


matPlotM(matPlotDat,xlab=xlabel,xaxisOpts=xaxisOpts,ylab=ylabel,yaxisOpts=yaxisOpts,title=titleOfPlot,leg=legendNames)
}
\seealso{  \code{\link{matplot}}, \code{\link{plot}} }
