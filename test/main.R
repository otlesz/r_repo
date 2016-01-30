##
## This program is free software; you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by the
## Free Software Foundation; either version 2, or (at your option) any
## later version.
##
## These functions are distributed in the hope that they will be useful,
## but WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
##
## The text of the GNU General Public License, version 2, is available
## as http://www.gnu.org/copyleft or by writing to the Free Software
#Reads data in csv format with header and skips 3 lines
#Author is Zekai Otles <otlesz@gmail.com>
#maintainer{ Zekai Otles otlesz@gmail.com}
Main<-function(chapter){
#library (uRprogramming)
require("tcltk")
source(tk_choose.files())
  
  if(chapter=="I") {
    
    setParentDir=setwd("..")

#  setwd("./lib/uRprogramming/R")
 
  
#  source("createDataFile.R")
  CreateDataFile()
  } else if (chapter=="II"){
    synDat<-ConditionalStatement()
    stat<-"mean"
    result<-switch(stat,"mean"=mean(synDat[,3]),"sd"=sd(synDat[,3]) )
    print(result)
  }
  

  
}
