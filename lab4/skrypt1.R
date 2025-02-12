setwd("D:/apu/lab4")
#install.packages("C50")
library(C50)
phones <- read.csv("phones.csv")
smartdata <- data.frame(phones$wyswietlacz, phones$pamiec_RAM, phones$pamiec_wbudowana, phones$aparat_foto, phones$oceny)
smartdata$phones.oceny <- as.factor(smartdata$phones.oceny)
smartdata$phones.wyswietlacz <- as.factor(smartdata$phones.wyswietlacz)
smartdata$phones.pamiec_RAM <- as.factor(smartdata$phones.pamiec_RAM)
smartdata$phones.pamiec_wbudowana <- as.factor(smartdata$phones.pamiec_wbudowana)
smartdata$phones.aparat_foto <- as.factor(smartdata$phones.aparat_foto)
tree <- C5.0(phones.oceny ~ ., data = smartdata)
tree <- C5.0(x=smartdata[,-5], y=smartdata[,5])
tree <- C5.0(x=smartdata[,-1], y=smartdata[,1])
summary(tree)
plot(tree)
table(predict(tree, newdata=smartdata), smartdata$phones.oceny)