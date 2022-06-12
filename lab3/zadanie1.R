install.packages("neuralnet")
library("neuralnet")

normalize <- function(x) {
    return ((x - min(x)) / (max(x) - min(x)))
}

argument <-as.data.frame(runif(100, min = 1, max = 3))
wynik_funkcji <- sin(argument^2)

argument
wynik_funkcji

scaled.argument <- as.data.frame(lapply(argument, normalize))
scaled.argument

dane_treningowe <- cbind(scaled.argument, wynik_funkcji)
colnames(dane_treningowe) <- c("Argument", "Wynik_funkcji")

net.price <- neuralnet(Wynik_funkcji~Argument, dane_treningowe, hidden = c(3, 2), threshold = 0.01)

plot(net.price)