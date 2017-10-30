#odfWeave driver
library("chron")
library("odfWeave")
library("log4r")
library("readr")
library("uRProgramming")
data(package="uRProgramming")
data(synDat)


library('log4r')
library("RMySQL")
#Create a new logger object with create.logger().
logger <- create.logger()

# Set the logger's file output.
logfile(logger) <- 'dfRtools.log'

#ve Set the current level of the logger.
level(logger) <- log4r:::DEBUG
#level(logger) <- log4r:::INFO

imageDefs<-getImageDefs()
imageDefs$plotWidth<-720
imageDefs$dispWidth<-6.5
imageDefs$dispHeight<-9
imageDefs$plotHeight<-960
imageDefs$type<-"cairo1"
imageDefs$device<-"png"
setImageDefs(imageDefs)


#con<-dbConnect(RMySQL::MySQL(), dbname="urprogramming",password="urprogramming")
con <- dbConnect(RMySQL::MySQL(),  user = 'root', password = 'erzurum', host = '127.0.0.1' , dbname = 'urprogramming')


  odfWeave("test/uRProgramming_templ.odt","test/uRProgramming_report.odt",workDir="../odfWeaveTmp")

