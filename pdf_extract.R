library(pdftools)
folder<-file.path("C:\\Pasta_Python","trabalho","emprego")
folder
len<-length(dir(folder))
len
dirpdf<-dir(folder)
pdftotxt<-"C:\\Program Files\\xpdf-tools-win-4.00\\bin64\\pdftotext.exe"

for(i in 1:length(dir(folder))){
  pdf<-file.path("C:\\Pasta_Python\\trabalho","emprego",dirpdf[i])
  system(paste("\"",pdftotxt,"\" \"",pdf, "\"",sep=""),wait=F)
}
