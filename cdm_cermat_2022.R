library (readr)
library(GDINA)

#https://github.com/pragmaths/bn2/blob/main/db2022.csv
#https://github.com/pragmaths/bn2/blob/main/qmat2022.csv

setwd("/Users/pragmaths/Documents/MatematikaMZ")

db2022 <- read.csv("db2022.csv", header = TRUE)
# 12709 obs, 30 vars.
qmat2022 <- read_csv(url(url)) 
# 30 obs, 6 vars.

estDINA <- GDINA(dat = db2022, Q = qmat2022, model = "DINA")

summary(estDINA)
modelfit(estDINA)
itemfit(estDINA)

estRRUM <- GDINA(dat = db2022, Q = qmat2022, model = "RRUM")

summary(estRRUM)
modelfit(estRRUM)
itemfit(estRRUM)

estGDINA <- GDINA(dat = db2022, Q = qmat2022, model = "GDINA")

summary(estGDINA)
modelfit(estGDINA)
itemfit(estGDINA)
