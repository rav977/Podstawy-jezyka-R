setwd("D:/apu")
library("neuralnet")

#ram i pamiec
traininginput <- as.data.frame(matrix(c(1,6,1,4,1,3,3,3,4,1,8,6,6,6,4,
                                        8, 128, 8, 64, 16, 64, 32, 32, 64, 8, 128, 128, 128, 128, 64), nrow=15, ncol=2))
trainingoutput <- c(599, 1899, 349, 2899, 761, 885, 899, 1799, 1999, 869, 3999, 2399, 1399, 1799, 699)

#normalizacja
maxs <- apply(traininginput,2,max)
mins <- apply(traininginput,2,min)

#konwersja do frame
scaled.traininginput <- as.data.frame(scale((traininginput), center = mins, scale = maxs - mins))

#print(head(scaled.traininginput, 15))

#po³¹czenie danych wejœciowych i wyjœciowych
trainingdata <- cbind(scaled.traininginput, trainingoutput)
trainingdata <- cbind(scaled.traininginput, as.data.frame(scale(trainingoutput, center = min(trainingoutput), scale = max(trainingoutput - min(trainingoutput)))))
colnames(trainingdata) <- c("RAM", "Pamiec", "Cena")

#print(trainingdata)

#nauczanie
net.price <- neuralnet(Cena ~ RAM+Pamiec, trainingdata, hidden = c(5,3,3), threshold = 0.01)

print(net.price)

#wyœwietlenie
plot(net.price)

#prognozowanie
testdata <- as.data.frame(matrix(
    c(8,8,128,64),
    nrow = 2,
    ncol = 2
))

scaled.testdata <- as.data.frame(scale(testdata, center = mins, scale = maxs - mins))

net.results <- compute(net.price, scaled.testdata)
ls(net.results)
print(net.results$net.result * max(trainingoutput - min(trainingoutput)) + min(trainingoutput))