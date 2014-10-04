
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
# Function create Data files 
#######################################
#The purpose of these function to
#Reads data in csv format with header and skips 3 lines
#Author is Zekai Otles <otlesz@gmail.com>

createDataFile<-function(fname=NULL)
{
require("tcltk")

if(is.null(fname)){
    fname<-file(tk_choose.files())
    synDat<-read.csv(fname,header=TRUE,skip=3,sep=",")
}else{
    synDat<-read.csv(fname,header=TRUE,skip=3,sep=",")
}
   
    return(synDat)

}