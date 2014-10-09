#odfWeave driver
library("chron")
library("odfWeave")
library("log4r")
library("uRProgramming")
data("uRProgramming")


library('log4r')
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

odfWeave("uRProgramming_template.odt","dfRTools_report.odt",workDir="../odfWeaveTmp")

