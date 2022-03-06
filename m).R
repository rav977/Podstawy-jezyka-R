percentage <- table(ramka$oceny)/length(ramka$oceny)
percentage
fan.plot(percentage, labels = names(percentage))

