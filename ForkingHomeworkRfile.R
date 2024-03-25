library(tidyverse)
library(dplyr)
library(data.table)
diamonds <- as.data.table(diamonds)
head(diamonds[, .(carat, cut, price)][price > 7000 & price < 10000 & cut == "Premium"][order(-carat)], 15)
diamonds

#diamonds%>%
 # select(carat,cut,price)%>%
  #filter(cut == "Premium")%>%
  #filter(price > 7000 & price < 10000)%>%
  #arrange(desc(carat))%>%
  #slice(1:20)
