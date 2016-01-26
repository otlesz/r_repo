
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
## Foundation, 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#



#The purpose of these function to demonstrate conditional statemenet
#
#This function written by Zekai Otles <otlesz@gmail.com>
#Date of function first written

ConditionalStatement<-function(){
require("tcltk")
  fName=file(tk_choose.files())
  print(fName)
  if(is.null(fName)){
    print("No file selected \n")
  }else{
    synDat<-read.csv(fName,header=TRUE,skip=0,sep=",")
    
    
  }
  
  if(!is.null(synDat)){
    
    for (indx in 1:length(synDat[[1]])){
      #comparison operator
      if(synDat[indx,1] ==1 ) {synDat[indx,1]<-"M"}
      
      #assignment based on range
      if(synDat[indx,2] <=25 )synDat[indx,2]<-"Y"
  
      if(synDat[indx,2] > 25 & synDat[indx,2] <=50 )synDat[indx,2]<-"M"
      
      if(synDat[indx,2] > 50 ) {synDat[indx,2]<-"O"}

    }
      
    
  }
  
  
return (synDat)
}

