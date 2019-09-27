mydf <- read.table("assets/data/npubsanalyze.txt", sep = "\t")
mydf <- mydf[-c(1),]

mydf$V1 <- as.vector(mydf$V1)
mydf$V2 <- as.vector(mydf$V2)
mydf$V3 <- as.vector(mydf$V3)

mydf$V1<-as.numeric(mydf$V1)
mydf$V2<-as.numeric(mydf$V2)
mydf$V3<-as.numeric(mydf$V3)

colnames(mydf) <-c("Year", "Records", "Of 4500")


## Plotly settings
Sys.setenv("plotly_username"="larsbun")
Sys.setenv("plotly_api_key"="9ZxSr0DutTc3C8QammyN")


library(ggplot2)

g <- ggplot(mydf, aes(Year, Records)) 
gp <- g + geom_line() 

gpgp <- gp + 
  annotate("segment", x = 1967, xend=1967, y = 200, yend=50, color = "red", arrow=arrow(length=unit(0.05,"npc"))) + 
  annotate("segment", x = 1980, xend=1980, y = 200, yend=50, color = "yellow", arrow=arrow(length=unit(0.05,"npc"))) +
  annotate("segment", x = 2004, xend=2004, y = 350, yend=200, color = "green", arrow=arrow(length=unit(0.05,"npc"))) +
  annotate("segment", x = 2013, xend=2014, y = 100, yend=250, color = "blue", arrow=arrow(length=unit(0.05,"npc"))) +
  annotate("text", x = 1967, y = 230, label = "ALPAC", color = "red") +
  annotate("text", x = 1980, y = 230, label = "EBMT", color = "yellow") +
  annotate("text", x = 2004, y = 370, label = "SMT", color = "green") +
  annotate("text", x = 2014, y = 80, label = "NMT", color = "blue") 

myp <- ggplot(data = mydf[1:10,], aes(x = rownames(mydf[1:10,]), y= V2))
myp + geom_line()

