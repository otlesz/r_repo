
#######################################
# Function layOutSetup
#######################################
#The purpose of these function to teach some statistics and demonstrate R
#functionality
#This function written by Zekai Otles <otlesz@gmail.com>

layOutSetUp<-function(numFigs=numFigs){
 
if(numFigs==2){
layout(matrix(c(1,1,2,2),2,2,byrow=TRUE))
}else if(numFigs==3){
layout(matrix(c(1,1,2,2,3,3),3,2,byrow=TRUE))
}else if(numFigs==4){
layout(matrix(c(1,2,3,4),2,2,byrow=TRUE))
}else if(numFigs>=5){
layout(matrix(c(1,2,3,4,5,6),3,2,byrow=TRUE))
}
}#end of  function 
