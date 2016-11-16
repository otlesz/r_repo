#insert data into "airquality" table
insertData<-function(){
library("RMySQL")
#if(con)dbDisconnect(con)
con <- dbConnect(RMySQL::MySQL(), dbname = "urprogramming",password="urprogramming")
                

numR<-dim(airquality)[1]

for (iRow in 1:numR) {
#  print(iRow)
  data<-airquality[iRow,]
  
 data[is.na(data)]<-999999
   
#  print(statement)
  insertQuery <- paste(paste(statement,"VALUES("), paste(data, collapse = ", "), ")")
#  
  print(insertQuery)
  dbGetQuery(con,insertQuery)
}
}