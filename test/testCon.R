library("RMySQL")
con <- dbConnect(RMySQL::MySQL(),  user = 'root', password = 'erzurum', host = '127.0.0.1' , dbname = 'urprogramming')
                