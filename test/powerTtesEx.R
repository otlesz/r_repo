

#with different significance level and power of test options we could determine sample size in order to make 
#decisions

test<-function(){
library("ggplot2")
library("foreach")

source("powerTtestForSampleSize.R")


#calculate sample sizes for different sd values
#display w.r.t to power and sample size

power<-seq(0.5,0.99,0.01)
sigmas<-c()
powers<-c()
t<-c()


Ho=850;Ha=810;sigLevel=0.05;sdVals=c(10,20,30,40,50);
sd=c("sig1","sig2","sig3","sig4","sig5")



numL=length(power)
for (sdIx in 1:5){
    foreach ( ix=1:numL) %do% {
        index<-(sdIx-1)*numL+ix

        powers[index]<-power[ix]
        sigmas[index]<-sd[sdIx]
    t[index]<-powerTtestForSampleSize(Ho,Ha,sdVals[sdIx],sigLevel=sigLevel,power=power[ix])$n
    #print(t[index])
    }    
}
df<-data.frame(powers,ceiling(t),sigmas)
colnames(df)<-c("power","sample_size","sigma")

fig1<-ggplot(data=df,
             aes(x=power, y=sample_size, color=sigma)) +
               geom_line()+theme_bw()+labs(y="n",x="Power")+
              opts(title="Sample Size vs Power w.r.t different ",
            plot.title = theme_text(size=14, lineheight=.8, face="bold",col="red"))+
              scale_color_discrete(name=expression(sigma),breaks=sd,
                                   labels=foreach(i=1:5) %do% sdVals[i] )
              #labels=foreach(i=1:5) %do% c(expression(paste(sigma,"=") ),sdVals[i] ) )
#+           labels=foreach(i=1:5) %do% sdVals[i] ) 
            #  scale_color_labels(c(1,2,3,4,5))
              

             # legend.title = paste(expression(sigma)," values"))
          
#legend.title="sigma")
          
print(fig1)

}