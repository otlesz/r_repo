#insert data into "airquality" table
insertData<-function(){
library("RMySQL")
#if(con)dbDisconnect(con)
con <- dbConnect(RMySQL::MySQL(), dbname = "urprogramming",password="urprogramming")
                

numR<-dim(airquality)[1]

for (iRow in 1:numR) {
#  print(iRow)
  data<-airquality[iRow,]
  print(paste(iRow,"\n"))
  print(data)
  for (indx in 1:dim(data)[2]){
    print(paste(indx,"\n"))
    if(is.na(data[indx])){
      print(data[indx])
      data[indx]<-NULL
      print(data[indx])
      }
   }
  statement<-paste("INSERT INTO ","airquality")
#  print(statement)
  insertQuery <- paste(paste(statement,"VALUES("), paste(data, collapse = ", "), ")")
#  
  print(insertQuery)
  dbGetQuery(con,insertQuery)
}
}