corTest<-function(xVals=xVals,yVals=yVals){
x<-sample(xVals,size=15)
y<-sample(yVals,size=15)
#cor(x,y,use="everything",method=c("pearson","kendall","spearman"))
cor.test(x,y,method="pearson")
print(cor.test(x,y,method="pearson"))
sdXsdY=sd(x)*sd(y)
pearsonCor=cov(x,y,method="pearson")/sdXsdY
print(paste("Pearson=",pearsonCor))

cor.test(x,y,method="spearman")
print(cor.test(x,y,method="spearman"))

cor.test(x,y,method="kendall")
print(cor.test(x,y,method="kendall"))


}