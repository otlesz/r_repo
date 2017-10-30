#insert data into "airquality" table
insertData<-function(){
library("RMySQL")
#if(con)dbDisconnect(con)
               

numR<-dim(airquality)[1]
#con <- dbConnect(RMySQL::MySQL(), dbname = "urprogramming",password="urprogramming")

con <- dbConnect(RMySQL::MySQL(),  user = 'root', password = 'erzurum', host = '127.0.0.1' , dbname = 'urprogramming')
results<-dbSendQuery(con, "SELECT * FROM airquality")
dataFrm<-dbFetch(results)

#dbFetch(results)
print(dim(dataFrm)[1])
#print(dataFrm[1:5,])
iSkip<-FALSE
if(dim(dataFrm)[[1]] > 1){iSkip<-FALSE
 }else {
   iSkip<-TRUE
}

if(iSkip){
  for (iRow in 1:numR) {
   
 # print(iRow)
  data<-airquality[iRow,]
   
  data[is.na(data)]<-999999
  statement<-paste("INSERT INTO ","airquality")
   
#  print(statement)
  insertQuery <- paste(paste(statement,"VALUES("), paste(data, collapse = ", "), ")")
#  
 print(insertQuery)
 dbGetQuery(con,insertQuery)
  }
}#end of iSkip
dbDisconnect(con)

}