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


#######################################
# Function FUNCTION_NAME
#######################################
#The purpose of these function to
#functionality
#This function written by FIRST AND LAST NAME <e-mail address>
#Date of function first written

loopStructures<-function(){
#Write the contents of R
  set.seed(312)
  #create 100 random number between 0 and 1000
  xInt<-floor(runif(100,0,1000))
  
  for(indx in 0:length(xInt) ){
    if(indx %%10 ==0){print(xInt[indx])}
  
  }


}