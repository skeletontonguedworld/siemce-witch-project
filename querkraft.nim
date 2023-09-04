while true:
  echo "Zaloguj siem do lasta:"
  var osoba = readLine(stdin)
  if osoba == "EnvyBitch":
    echo "Bardzo dobrzu, to Ty, Kari"
    break
  else:
    echo "Nie, to się Kari ma zalogować, pls"

echo "Dobru, więc LAS(t) jest naszym sklepikiem zielarskim teraz, jedziemy"

type Last = enum
        Zmrożone_kwiaty = 10
        Mięciutkie_czarne_gwiazdki = 25
        Kwiatuszki_z_wygnania = 50
        Nieskończona_róża = 55
        Płatki_na_zbroję = 60
        Apokaliptyczny_folk = 666

var last = @[Kwiatuszki_z_wygnania, Płatki_na_zbroję, Zmrożone_kwiaty, Mięciutkie_czarne_gwiazdki, Nieskończona_róża]
var twójplecaczek = @[Apokaliptyczny_folk]
var pinionszkim = 66

while pinionszkim > 0:
  echo "Witaj w LASćie, sklepiku zielarskim Kari, czy kcesz cuś kupić? Dzisiej mamy:"
  for rzeczułki in last:
    echo rzeczułki
  echo "Tylko proszę podawać numereczki, to szybciej będzie, dla kwiatuszków 0, dla płatków 1 etc."  
  var osobakupująca = readLine(stdin)
  if osobakupująca == "0":
    echo "Proszum, oto Twoje kwiatuszki z wygnania, proszum 50 złoteczka mje dać" 
    pinionszkim -= Kwiatuszki_z_wygnania.int 
    twójplecaczek.add(last[0])
  if osobakupująca == "1":
    echo "Proszum, oto Twoje płatki na zbroję, proszum 60 złoteczka mje dać" 
    pinionszkim -= Płatki_na_zbroję.int 
    twójplecaczek.add(last[1])
  if osobakupująca == "2":
    echo "Proszum, oto Twoje zmrożone kwiaty, proszum 10 złoteczka mje dać" 
    pinionszkim -= Zmrożone_kwiaty.int 
    twójplecaczek.add(last[2])
  if osobakupująca == "3":
    echo "Proszum, oto Twoje mięciutkie czarne gwiazdki, proszum 25 złoteczka mje dać" 
    pinionszkim -= Mięciutkie_czarne_gwiazdki.int
    twójplecaczek.add(last[3])
  if  osobakupująca == "4":
    echo "Proszum, oto Twoja nieskończona róża, proszum 55 złoteczka mje dać" 
    pinionszkim -= Nieskończona_róża.int 
    twójplecaczek.add(last[4])
  else:
    echo "A to wyjć stont, jak nix nie kupujesz, bo zajmujesz kolejkę, mam pięciu Wiedźmaków na Twoje miejsce" 
    break

echo "A to się teraz podsumuje? Okok, Twój plecaczek ma:"
for rzeczułkipo in twójplecaczek:
  echo rzeczułkipo

echo "A Twoje pinionszki to:"
echo pinionszkim
