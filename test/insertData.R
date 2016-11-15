#insert data into "airquality" table
insertData<-function(){
library("RMySQL")
#if(con)dbDisconnect(con)
con <- dbConnect(RMySQL::MySQL(), dbname = "urprogramming",password="urprogramming")
                

numR<-dim(airquality)[1]

for (iRow in 1:numR) {
#  print(iRow)
  data<-airquality[iRow,]
  
  for (indx in 1:dim(data)[2]){
    if(is.na(data[indx])){data[indx]<-NULL}
  }
  statement<-paste("INSERT INTO ","airquality")
#  print(statement)
  insertQuery <- paste(paste(statement,"VALUES("), paste(data, collapse = ", "), ")")
#  
  print(insertQuery)
  dbGetQuery(con,insertQuery)
}
}