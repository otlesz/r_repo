#demonstrate simple distribution and some statistics
simpleStats<-function(){
x<-rnorm(100,mean=273.16,15)
#mean of variable
mean=mean(x)
ave=ave(x)
max=max(x)
min=min(x)
median=median(x)
sd=sd(x)
sum=sum(x)
return(list(mean,ave,max,min,median,sd,sum))
}