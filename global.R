# Packages
#install.packages(c("shiny", "shinydashboard", "dplyr", "DT", "readxl", "ggplot2", "plotly", "ggtext", "ggcorrplot", "reshape2"))
#library(shiny)
library(shinydashboard)
library(dplyr)
library(DT)
library(readxl)
library(ggplot2)
library(plotly)
library(ggtext)
library(ggcorrplot)
library(reshape2)

#Global 
data = read_excel("UMEPLOYMENT.xlsx")

data=data[-38,]
data <- mutate_all(data, funs(ifelse(. == "NA", NA, .)))
#Converting required columns to numeric
numeric_columns = c("2017-18","2018-19","2019-20","2020-21","2021-22")  
data = data %>%
  mutate_at(vars(numeric_columns), as.numeric)



#structure
data %>% 
  str()

#Summary
data %>% 
  summary()



#Choices for input 
choices1 = data %>% 
  select(-'States/UTs') %>% 
  names()



