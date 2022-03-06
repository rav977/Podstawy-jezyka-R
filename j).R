nowy_smartfon <- data.frame(nazwa ="Galaxy S22",wyswietlacz = "2400 x 1080",pamiec_RAM ="8 GB");
nowy_smartfon <- data.frame(nowy_smartfon,pamiec_wbudowana = "128 GB",aparat_foto="50 Mpix",cena = 3999,liczba_opinii = 44);
nowy_smartfon
ramka <- rbind(ramka,nowy_smartfon)
mean(ramka$cena)
