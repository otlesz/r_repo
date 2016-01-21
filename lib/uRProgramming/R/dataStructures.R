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
# Function dataStructures
#######################################
#The purpose of these function to
#functionality
#This function written by Zekai Otles 
#Date of function first written

dataStructures<-function(type=type)
{
	if(type=="vector"){
		cat("create simple Example of Vector \n x<-c(1,2,3)","\n")
		print("names(x) to name elements of the vector")
		cat("names(x)<-c(","a","b","c",")\n")
	}else if(type=="list"){
	print("list can hold differenwt types character, numeric, unlike the vector")
	cat("aList<-list(field1=324,field2=c(1,2,3),field3=","text\n")
	aList<-list(field1=324,field2=c(1,2,3),field3="text")
	print("list can be retrieved; aList$field1")
	print(aList$field1)
	cat("list can be retrieved; aList[","field2","]\n")
	print(aList[["field2"]])
	print(aList[["field3"]])

	}else if(type=="arrays"){

	
	}else if(type=="dataFrame"){

	
	}else if(type=="stack"){

	}

}

