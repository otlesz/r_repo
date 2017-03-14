
######################################
# Function freqPlot
#######################################
#The purpose of these function to teach some statistics and demonstrate R
#functionality
#This function plots  barplots for for given matrix data,
#with bar stacked on each other or bars side of each other
#different pattern style filling is also an option
#This function written by Zekai Otles <otlesz@gmail.com>

freqPlot<-function(mat=freqData,xlabels=NULL,ylabels=NULL,onePlot=FALSE,besideOrNot=TRUE,isCol=TRUE,titleOfPlot=NULL){
 
#num of Data Columns besides the first column with identifies common data variable
#in this case is plate number
numRows<-dim(mat)[1]
#layout for the plots
layOutSetUp(1)
if(!onePlot)
{
  layOutSetUp(numRows-1)}
  else{
    layOutSetUp(2)
  }

colArray<-array("",dim=numRows)
if(isCol & onePlot){
  colArray<-c("#00007F", "blue", "#007FFF", "cyan","#7FFF7F", "yellow", "#FF7F00", "red", "#7F0000")
}else{
   colArray="gray"
}
titleOfP<-paste(titleOfPlot, "Months")
if(!onePlot){

  for(index in 2:numRows){

    titleOfP<-paste(titleOfPlot,rownames(mat)[index])
 barplot(as.numeric(mat[index,]),xlab=xlabels,ylab=ylabels,col=colArray)
    title(titleOfP)
        box()
  }#end of for loop for index
}else {
  #barplot(mat,xlab=xlabels,ylab=ylabels,beside=besideOrNot,col=colArray[1:numRows])
  barplot(mat,beside=besideOrNot,xlab=xlabels,ylab=ylabels,col=colArray)
   title(titleOfP)
   
    box()
}
}#end of function
