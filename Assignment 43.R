StateName <- state.name
StateLen <- nchar(state.name)

State_T <- data.frame(StateName,StateLen)

#1. Get states with names "w" or "W"
library(stringr)
library(stringi)
StateName[grep("[w,W]",StateName,ignore.case = F)]

#2. Prepare a Histogram of the number of characters in each US state.
hist(State_T$StateLen, main = "Histogram of the number of characters in each US state", xlab = "Number of Char",col = heat.colors(5))
