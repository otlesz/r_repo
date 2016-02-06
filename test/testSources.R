#This was found
#http://r.789695.n4.nabble.com/unable-to-collate-and-parse-R-files-for-package-unexpected-end-of-input-td4690788.html

for (files in list.files("../lib/uRprogramming/R", full.names=TRUE)) parse(files)

