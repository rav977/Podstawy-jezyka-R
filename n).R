ramka$status_opinii <-           (ifelse(ramka$liczba_opinii < 50, 'mniej 50 opinii', 
                                 ifelse((ramka$liczba_opinii >= 50 & ramka$liczba_opinii <= 100), '50-100 opinii', 
                                 ifelse(ramka$liczba_opinii > 100, 'wiecej 100 opinii','nie ma'))))
                          
ramka$status_opinii <- factor(ramka$status_opinii)
ramka
percentage <- table(ramka$status_opinii) /
  length(ramka$status_opinii)
pie(percentage)
