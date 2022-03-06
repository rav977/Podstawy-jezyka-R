Smartfon1 <- data.frame(nazwa = "GalaxyS20",wyswietlacz = "2400x1080", pamiec_RAM = "6 GB", pamiec_wbudowana ="128 GB")
Smartfon1 <- data.frame(Smartfon1,aparat_foto = "12 Mpix", cena = 2399,liczba_opinii = 149,oceny = 5)
Smartfon2 <- data.frame(nazwa = "GalaxyM52",wyswietlacz = "2400x1080", pamiec_RAM = "6 GB", pamiec_wbudowana ="128 GB")
Smartfon2 <- data.frame(Smartfon2,aparat_foto = "64 Mpix", cena = 1399,liczba_opinii = 46,oceny = 5)
Smartfon3 <- data.frame(nazwa = "GalaxyA52s",wyswietlacz = "2400x1080", pamiec_RAM = "6 GB", pamiec_wbudowana ="128 GB")
Smartfon3 <- data.frame(Smartfon3,aparat_foto = "64 Mpix", cena = 1799,liczba_opinii = 217,oceny = 5)
Smartfon4 <- data.frame(nazwa = "GalaxyM12",wyswietlacz = "1600x720", pamiec_RAM = "4 GB", pamiec_wbudowana ="64 GB")
Smartfon4 <- data.frame(Smartfon4,aparat_foto = "48 Mpix", cena = 699,liczba_opinii = 168,oceny = 5)

ramka <- rbind(ramka,Smartfon1)
ramka <- rbind(ramka,Smartfon2)
ramka <- rbind(ramka,Smartfon3)
ramka <- rbind(ramka,Smartfon4)
ramka
install.packages("plotrix")
library("plotrix")
count <- table(ramka$oceny)
barplot(count)

