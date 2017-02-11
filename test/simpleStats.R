#demonstrate simple distribution and some statistics
simpleStats<-function(n,mean,sd){
x<-rnorm(n,mean=mean,sd)
#mean of variable
mean=mean(x)
ave=ave(x)
max=max(x)
min=min(x)
median=median(x)
sd=sd(x)
sum=sum(x)
summary=summary(x)
return(list(mean=mean,ave=ave,max=max,min=min,median=mean,sd=sd,summary=summary,sum=sum))
}