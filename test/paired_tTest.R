library('uRProgramming')
heightData<-data.frame(CreateDataFile())
df<-heightData
t.test(df$Kadin,df$Erkek,paired=TRUE, conf.level=0.95)