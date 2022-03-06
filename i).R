nazwa <- c("Sony Xperia 5.6","Sony Xperia 10.3", "Sony Xperia E4","Sony Xperia XZ3");
nazwa <- c(nazwa,"Sony Xperia P", "Sony Xperia L4","Sony Xperia XA2","Sony Xperia Z5");
nazwa <- c(nazwa,"Sony Xperia XZ1","Sony Xperia V");
nazwa
wyswietlacz <- c("854x480","1080x2520","540x960");
wyswietlacz <- c(wyswietlacz," 1440x2880 ","540x960","720x1680");
wyswietlacz <- c(wyswietlacz,"1080x1920","1080x1920","1080x1920");
wyswietlacz <- c(wyswietlacz,"720x1280");
wyswietlacz
pamiec_RAM <- c("512 MB","6 GB","1 GB","4 GB","1 GB","3 GB","3 GB","3 GB","4 GB","1 GB")
pamiec_RAM
pamiec_wbudowana <- c("8 GB","128 GB","8 GB","64 GB","16 GB","64 GB","32 GB","32 GB","64 GB","8 GB")
pamiec_wbudowana
aparat_foto <- c("5 Mpix","12 Mpx","5 Mpx","19 Mpx","8 Mpx","13 Mpx","23 Mpx","23 Mpx","19 Mpx","13 Mpx")
aparat_foto
cena <- c(599,1899,349.99,2899,761.91,885.00,899.00,1799);
cena <- c(cena,1999,869.00);
cena
liczba_opinii <- c(61,144,34,25,95,44,85,19,123,11);
ramka <- data.frame(nazwa,wyswietlacz,pamiec_RAM,pamiec_wbudowana,aparat_foto,cena,liczba_opinii);
ramka[c(1:7)]
mean(ramka$cena)
