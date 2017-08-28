df(file=chose.file(),header=TRUE,sep=",")

t.test(df$Kadin,df$Erkek,paired=TRUE, conf.level=0.95)