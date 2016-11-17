#insert data into "airquality" table
insertData<-function(){
library("RMySQL")
#if(con)dbDisconnect(con)
               

numR<-dim(airquality)[1]
#con <- dbConnect(RMySQL::MySQL(), dbname = "urprogramming",password="urprogramming")

  for (iRow in 1:numR) {
   
  print(iRow)
  data<-airquality[iRow,]
   
  data[is.na(data)]<-999999
  statement<-paste("INSERT INTO ","airquality")
   
#  print(statement)
  insertQuery <- paste(paste(statement,"VALUES("), paste(data, collapse = ", "), ")")
#  
  print(insertQuery)
#  dbGetQuery(con,insertQuery)
  }
#dbDisconnect(con)

}