install.packages("gridExtra");
library("gridExtra");
help(package="gridExtra");
new_titanic <- Titanic[c(1:10)];
head(new_titanic);
grid.table(new_titanic)
