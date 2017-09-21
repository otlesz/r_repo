#http://www.ats.ucla.edu/stat/R/dae/t_test_power.htm

#this code copied from the above web-site
#t-testfor power analysis

#The given is set up following we know the sample mean and standard deviation of the sample
#we think that mean somehow is questionable, in order to prove or disprove the mean statistics 
#how many sample should be taken from the population with a significance level (probability of type I error)
#and the power.
#type I error is rejecting null hypothesis rejecting when it is true,
#power of test against the alternative hypothesis is probability of rejecting null hypothesis.


#with different significance level and power of test options we could determine sample size in order to make 
#decisions

powerTtestForSampleSize<-function(Ho,Ha,sd,sigLevel,power,n){
library(pwr)

#this is under normal assumption

if(!is.null(power)){
t<-pwr.t.test(d=(Ho-Ha)/sd,power=power,sig.level=sigLevel,type="one.sample",alternative="two.sided")
}else if(!is.null(n)){
  t<-pwr.t.test(d=(Ho-Ha)/sd,n=n,sig.level=sigLevel,type="one.sample",alternative="two.sided")
}

return(t)

}