while true:
  echo "Zaloguj siem do lasta:"
  var osoba = readLine(stdin)
  if osoba == "EnvyBitch":
    echo "Bardzo dobrzu, to Ty, Kari"
    break
  else:
    echo "Nie, to się Kari ma zalogować, pls"

echo "Dobru, więc LAS(t) jest naszym sklepikiem zielarskim teraz, jedziemy"

var last = @["kwiatuszki z wygnania", "płatki na zbroję", "zmrożone kwiaty", "mięciutkie czarne gwiazdki", "nieskończona róża"]
var twójplecaczek = @["apokaliptyczny folk"]
var pinionszkim = 66

while pinionszkim > 0:
  echo "Witaj w LASćie, sklepiku zielarskim Kari, czy kcesz cuś kupić? Dzisiej mamy:"
  for rzeczułki in last:
    echo rzeczułki
  echo "Tylko proszę podawać numereczki, to szybciej będzie, dla kwiatuszków 0, dla płatków 1 etc."  
  var osobakupująca = readLine(stdin)
  if osobakupująca == "0":
    echo "Proszum, oto Twoje kwiatuszki z wygnania, proszum 50 złoteczka mje dać" 
    pinionszkim -= 50 
    twójplecaczek.add(last[0])
  if osobakupująca == "1":
    echo "Proszum, oto Twoje płatki na zbroję, proszum 60 złoteczka mje dać" 
    pinionszkim -= 60 
    twójplecaczek.add(last[1])
  if osobakupująca == "2":
    echo "Proszum, oto Twoje zmrożone kwaity, proszum 10 złoteczka mje dać" 
    pinionszkim -= 10 
    twójplecaczek.add(last[2])
  if osobakupująca == "3":
    echo "Proszum, oto Twoje mięciutkie czarne gwiazdki, proszum 25 złoteczka mje dać" 
    pinionszkim -= 25 
    twójplecaczek.add(last[3])
  if  osobakupująca == "4":
    echo "Proszum, oto Twoja nieskończona róża, proszum 55 złoteczka mje dać" 
    pinionszkim -= 55 
    twójplecaczek.add(last[4])
  else:
    echo "A to wyjć stont, jak nix nie kupujesz, bo zajmujesz kolejkę, mam pięciu Wiedźmaków na Twoje miejsce" 
    break

echo "A to się teraz podsumuje? Okok, Twój plecaczek ma:"
for rzeczułkipo in twójplecaczek:
  echo rzeczułkipo

echo "A Twoje pinionszki to:"
echo pinionszkim
