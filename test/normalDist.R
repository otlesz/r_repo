
#The purpose of this test to see effect of number of Normal distribution
#Normal distribution is back bone statistical theory
#to run this
#testNormal(numSet=100,mean=c(5,15,50),sd=c(10,5,3,1))
#num number of random observations
normalDist<-function(numSet=numSet,meanSet=meanSet,sdSet=sdSet){
#   library(e1071)
   #opar<-par(ask=interactive())
   opar<-par(font.main=1,ps=9)
   layout(matrix(c(1,2,3,4),2,2,byrow=TRUE))
  for(numIndx in 1:length(numSet)){
   num<-numSet[numIndx]
   for(pIndx in 1:length(meanSet)){
      p=meanSet[pIndx]
      for(i in 1:length(sdSet)){

        x<-rnorm(num,mean=p,sd=sdSet[i])
        iqr<-(quantile(x)[4]-quantile(x)[2])
        psd<-iqr/1.35
        
        if(sd(x)<psd){
            tail="light"   
        }else{
            tail="heavy"
        }
        titleOfPlot<-paste(num,"obs ",sep=" ")
        titleOfPlot<-paste(titleOfPlot,paste("mean",sprintf("%4.2f",p),sep="="),sep="   ")
        titleOfPlot<-paste(titleOfPlot,paste("sd",sprintf("%4.2f",sdSet[i]),sep="="),sep="   ")
        titleOfPlot<-paste(titleOfPlot,paste("tail",tail,sep="="),sep="   ")
        hist(x,probability=T,main=titleOfPlot)
        #xVals<-0:nset[i]
        #points(xVals,dbinom(xVals,nset[i],p),type="h",lwd="3")
        #points(xVals,dbinom(xVals,nset[i],p),type="p",lwd="3")

        
        curve(dnorm(x,mean=p,sd=sdSet[i]),add=T)
        points(quantile(x)[3],dnorm(quantile(x)[3],mean=p,sd=sdSet[i]),type="h",lwd="3")
        points(quantile(x)[2],dnorm(quantile(x)[2],mean=p,sd=sdSet[i]),type="h",lwd="2")
        points(quantile(x)[4],dnorm(quantile(x)[4],mean=p,sd=sdSet[i]),type="h",lwd="2")
      }
    }
   #frame()

  }
  par(opar)
   

   #print(x)
  return(as.numeric(x))
}
