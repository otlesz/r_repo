## Copyright (C) 2011 Frontier Science & Technology
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
# Function environment
#######################################
#The purpose of these function to
#functionality
#This function written by Zekai Otles otles@fstrf-wi.org
#April 8th, 2011


environment<-function(functName=NULL)
#Write the contents of R
{
	#This function demonstartes what the current environment set-up for you
	if(functName=="getwd"){
		print("current working or setting dir : (getwd(),setwd()")
		cat("Current Working Dir \n",getwd())
	} else if(functName=="history"){
		print(history())
		#cat("this file is written",.history)
		print("see current packages using search function")

	} else if(functName=="search"){
	#see currrent list of of liabraries in your current environment
		cat("search Results \n",search())
		#see installed all the packages
	} else if(functName=="installed.packages"){
		#see installed all the packages
		cat("installed Packages on your system  available to you \n",installed.packages())
		cat("installed Packages on your system  available to you \n",installed.packages()[,c("Package","Version")])
	} else if(functName=="remove.packages"){
		#You can remove packages from your system
		print("You can remove pacakages from your system \n You might need replace with the new pacakages,etc")
		cat("usage of remove.packages \n type:","??remove.packages()")
	} else if(functName=="library"){
		#if you like to use any library available to you from you system
		#either use library or require system
		cat("usage of library(libName) \n",library(odfWeave))
	} else if(functName=="detach"){
		#if you like the detach/remove a library from current environment then use detach
		cat("usage of detach \n",detach(package:odfWeave))
	} else if(functName==".Last.value"){
		#returns the last value of the object
		cat("usage of .Last.value \n",.Last.value)
	} else if(functName=="ls"){
		#returns the list of objects are in your current environment
		cat("usage of ls() \n",ls())
		#returns even the .hidden objects
		cat("usage of ls(all=TRUE) \n",ls(all=TRUE))
	} else if(functName=="rm"){
		#removes an object in your current environment
		aVar<-1
		cat("usage of rm(objName) \n",rm(aVar))
		#removes the list of objects are in your current environment
		cat("usage of rm(list=ls()) \n",rm(list=ls()))
		#removes the list of objects are in your current environment even the hidden ones
		cat("usage of rm(list=ls(all)) \n",rm(list=ls(all)))
	} else if(functName=="data"){
		#all available data in your environment
		print("usage data() \n")
		print(data())
		#you can detach data or any objects with following
		data()
		print("data(dataObject,package="packageName") OR \n data(package="packageName" \n")

		print("data(dataObject,package="packageName")")
		print("passengers<-AirPassengers \n")
		passengers<-AirPassengers
		print("detach(passengers)\n")
		detach(passengers)
	} else if(functName=="env"){
		#Examples of getting and setting up environment variables
		print(Sys.getenv(c("R_HOME", "R_PAPERSIZE", "R_PRINTCMD", "HOST")))
		#newEv variable
		cat(Sys.setenv("USERNAME="Zekai")))
		print(Sys.getenv("USERNAME"))
	} else if(functName=="options"){
	#see available options to you
	print("usage options() ")
	print(options())
	}
}#end of function



