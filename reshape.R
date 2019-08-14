## This line of code will install the library reshape2 if not 
## installed on your computer:
if(!require(reshape2)){install.packages("reshape2")}

library(reshape2) ### calling the library reshape2

## set your working directory or the folder where you have the file: 
setwd("C:/Users/Christian/Dropbox/") 


data<-read.csv("off site.csv") ## uploading the file

## melt function from the reshape2 library.
### melt (dataset, id.vars=c("here all the columns you want to keep"))
data2<-melt(data, id.vars=c("Block", "Trt", "Pen"))

## exports the data as an excel file:
write.csv(data2, file="off site long.csv") 


