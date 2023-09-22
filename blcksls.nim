import os
import std/strutils

type 
  Lokacje = enum
    Domena_Kari
    Balkon_Siemianowickch_Horrorów
    Piwniczne_Mokradła
    Przedblocze

var jesteśtu = Lokacje.Domena_Kari
var eq = @["rozum i godność człowieka"]
var hp = 100

while true:
  echo "Dzie kce iść?"
  var giereczkowacz = readLine(stdin)

  case giereczkowacz:
    of "Balkon Siemianowickich Horrorów": jesteśtu = Lokacje.Balkon_Siemianowickch_Horrorów
    of "Piwniczne Mokradła": jesteśtu = Lokacje.Piwniczne_Mokradła
    of "Przedblocze": jesteśtu = Lokacje.Przedblocze
    of "Domena Kari": echo "Już tu jesteś"

  echo "Jesteś w: " & $jesteśtu
  
  case jesteśtu:

    of Lokacje.Balkon_Siemianowickch_Horrorów: 
      echo "Pomimo dziwnych cieni na bloku, postanawiasz wyjść zapalić"
      echo "Kiedy odpalasz papieroska, zauważasz gigantyczną mackę, która próbuje Ci go wyrwać"
      echo "Papiroski som drogie, więc nie uciekasz tylko próbujesz odgnonić mackę światłem z zapalniczki"
      sleep(2000)
      echo "Lekko przypalona macka się odsuwa, lecz niestety, udaje jej się zrobić Ci dwie wampirze ranki na łokciu"
      echo "Odnosisz lekkie obrażenia"
      hp -= 21
      echo "Twoje zdrówko to teraz: " & $hp

    of Piwniczne_Mokradła:
      echo "Po roku mieszkania w Siemcach postanawiasz zejść do piwnicy i sprawdzić, czy ona w ogóle istnieje, bo nigdy w niej nie byłaś"
      echo "Zjeżdżasz windą, schodzisz kawałek po schodach i widzisz wodę stojącą w piwnicy, ZNÓW, pewnie po ostatnich deszczach, co robisz?"
      var piwniczak = readLine(stdin)

      if piwniczak == "Kurwuję na SSM" or piwniczak.contains("SSM"):
        echo "Nagle za Tobą pojawia sie sąsiad i mówi *O PANI, DOKŁADNIE TAK, PŁACIMY TYLE PINIENDZY ZA CZYNSZ, A POTEM PIWNICA PO KAŻDYM DESZCZU ZALANA, W TYM KRAJU NIC, TYLKO BY PINIONSZKI BRALI*"
        echo "Odpowiadasz *NO DOKŁADNIE, SYNKI SPRYTNE, A ROBIĆ NI MA KOMU, TRZEBA TO ZMIENIĆ*"
        echo "Sąsiad patrz na Ciebie, kiwa głową, wpycha Ci coś do ręki i ucieka"
        echo "Zyskujesz członkostwo spółdzielni"
        eq.add("członkostwo SSM")
        for rzeczy in eq:
          echo rzeczy   
      elif piwniczak == "Kurwa idę" or piwniczak.contains("id"):
        echo "Wchodzisz do piwnicy i czujesz, że to był błąd, czujesz wodę w butach i uciekasz jak najszybciej"
        hp -= 6
        echo "Twoje zdrówko to teraz: " & $hp
      else:
        echo "Sama nie wiesz, co robić, wracasz"

    of Przedblocze:
      echo "Postanawiasz wyjść z domu, wychodzisz z klatki, niestety na ławce siedzi sąsiadka, która zaczyna zagadywać"  
      echo "DZIOŁCHA, JO ŻECH CIĘ TU NIE WIDZIOŁA WCZECZEŚNIEJ! SKOMT JESTEŚ?" # nope, nadal nie umiem Śluskiego, nie będę nawet udawać XD
      echo "Musisz myśleć szybko, co kcesz zrobić, odejść i robić swoje, czy odpowiedzieć?"
      var przedblokarz = readLine(stdin)
      if przedblokarz == "Spierdalaj" or przedblokarz.contains("odej"):
        echo "Uciekasz jak najszybciej, nie będziesz przecież rozmawiać ze starymi plotkarami"
        echo "Widzisz jednak, że stara kobieta mamrocze coś pod nosem i w momencie doznajesz dziwnego uczucia wiercenia w głowie i dreszczy"
        hp -= 37
        echo "Twoje zdrówko to teraz: " & $hp
        eq.add("klomtwam Michałkowic")
        for rzeczy2 in eq:
          echo rzeczy2
      elif przedblokarz.contains("odp"):
        echo "Opowiadasz kobiecie. Chociaż wypytuje strasznie, to starasz się być miła, jednak dość szybko kończysz rozmowę, bo nie masz czasu na pierdoły"
        echo "Jednak masz wrażenie, że po tej rozmowie czujesz się lepiej"
        hp += 666
        echo "Twoje zdrówko to teraz: " & $hp

    else: echo "No dzie kce iść, do domu wrócić, jak w nim je może?"
