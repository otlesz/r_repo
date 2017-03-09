
matPlotM<-function(shMatrix=shMatrix,xlab=xlab,xaxisOpts=NULL,yaxisOpts=NULL,ylab=ylab,title=title,leg=leg){
  library("chron")
  source('~/r_repo/test/legendR.R')

        nRows<-dim(shMatrix)[1]
        nCols<-dim(shMatrix)[2]

        
        
        df<-data.frame(shMatrix[,1:nCols])
        #df<-data.frame(shMatrix[,1:nCols])
        #need to have dynamic color
        colors<-array(c("blue","red","green","yellow","orange","magenta","purple","cyan","black","gray"),dim=length(colnames(df)))
       charArray<-array(c(1,3,5,10,15,20,25),dim=length(colnames(df)))

	if(is.null(yaxisOpts)){
       #revert back to old assumptions x, is the first column of the matrix
        yMaxLimits<-c(0,max(as.numeric(shMatrix[1:nRows,2:nCols]),na.rm=T))
        #yMaxLimits<-c(0,max(as.numeric(shMatrix[1:nRows,1:nCols]),na.rm=T))
        #first column of the matrix ix the x-values
		ytick<-5
		yaxtVal<-"n"
	}else{
		yMaxLimits<-c(as.numeric(yaxisOpts[1]),as.numeric(yaxisOpts[2]))
		ytick<-as.numeric(yaxisOpts[3])
		yaxtVal<-yaxisOpts[4]
	}

        if(dim(shMatrix)[1]==1){
         xLabels<-as.integer(colnames(shMatrix))
        }else{
         xLabels<-as.integer(rownames(shMatrix))
        }
        #x<-seq(1:length(xLabels))
#	x<-as.integer(shMatrix[,1])
 x<-as.integer(rownames(shMatrix))
	if(is.null(xaxisOpts)){
		xtick<-(max(x)-min(x))/length(x)
                xMaxLimits<-c(min(x),max(x)+xtick)
		xaxtVal<-"n"
		
		
		
		
		
		
	}else{
		xMaxLimits<-c(as.numeric(xaxisOpts[1]),as.numeric(xaxisOpts[2]))
		xtick=as.numeric(xaxisOpts[3])
		xaxtVal<-xaxisOpts[4]
	}


	print(x)
	print(df)

        #subjects have no halfs to eliminate the floating point number representation
        #I turned yaxt tick first then I turned back with given tick values to
        # avoid default behaviour
        par(yaxt="n")

        matplot(x,df,type="l",lty=1,xaxt=xaxtVal,ylab=ylab,xlab=xlab,ylim=yMaxLimits,xlim=xMaxLimits,main=title,col=colors)
        par(yaxp=c(min(yMaxLimits),max(yMaxLimits),ytick))

        par(yaxt="l")
        axis(2)

#matplot(x,df,type="l",lty=1,xaxt="n",ylab="number of Subjects Reached the Visit",xlab="Visit or Sequence Number  ",ylim=yMaxLimits,xlim=xMaxLimits,main="Subject Tracking for Cordinating Centers",col=colors)
        matpoints(x,df,pch=c(1,3,5,10,15,20,25),col=colors)

        axis(1,at=x,xLabels)


       yPos<-max(yMaxLimits)+ytick/2
       legendR(max(x)+xtick,max(yMaxLimits),leg=leg,pch=charArray,col=colors,bty="n",xjust=1,yjust=1)

}
