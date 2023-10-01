import os
import std/strutils
import blcksls_zmienne
import blcksls_domena
import blcksls_balkon

proc blcksls_targowisko*() = 

  echo "Nu, Sklep Płaza nie jest daleko, można się po fajeczki wybrać, nix złego się nie może stać"
  sleep(2000)
  echo "Jednak idąc chodnikiem, słyszysz jak stary dziad, przechodząc obok Ciebie, zaczyna rantować Twój wygląd"
  sleep(2000)
  echo "Czy jakkolwiek na to zareagujesz?"
  let płazowicz = readLine(stdin)

  if płazowicz.contains("ak"):
    echo "Oj nie, tak nie będzie, nie można pozwalać na takie traktowanie, odwracasz się i zjebujesz typa"
    sleep(2000)
    echo "Typo ucieka jak najszybciej potrafi, a Ty masz wyjebane, bo i tak Cię nikt nie zna"
    sleep(2000)
    echo "Może teraz się trzy razy zastanowi, zanim zacznie kogoś rantować na głos"
    sleep(2000)
    hp += 6
    eq.add("szacunek ludzi ulicy")
    echo "Zaczynasz czuć się znacznie lepij, Twoje zdrówko urosło i wynosi teraz: " & $hp & " a do tego zyskujesz"
    sleep(1000)
    for rzecz in eq:
      echo rzecz
  else:
    echo "Postanawiasz nie reagować, szkoda nerwów na takich ludzi"
    sleep(2000)
    echo "Jednak odchodząc, myślisz o tym, czy na pewno zrobiłaś dobrze"
    sleep(2000)
    echo "Typo nix się nie nauczył i zapewne soon zrobi tak komuś jeszcze raz"
    sleep(2000)
    echo "Czujesz lekki ciężar na serduszku"
    hp -= 6

  echo "Idziesz dalej i zauważasz grupę Sebixów, trochę się boisz, ale z drugiej strony nigdy nix złego Ci się w Siemcach nie stało"
  sleep(3000)
  if eq.contains("szacunek ludzi ulicy"):
    echo "A dobra, co Ci szkodzi, kiedy przechodzisz koło nich, jeden z dresów mówi:"
    sleep(2000)
    echo "EJ MORDO, MORDO, CZEKEJ!"
    sleep(2000)
    echo "Nie jesteś pewna, co masz zrobić, może odwrócisz się i zapytasz, o co chodzi?"
    let płazowicz2 = readLine(stdin)
    if płazowicz2.contains("ak"):
      echo "Dobra, odwracasz się i pytająco spoglądasz na pięciu Sebixów i jednego, który wygląda jakby jako jedyny potrafił składać logiczne zdania"
      sleep(3000)
      echo "Hm, to chyba jakiś szefo"
      sleep(1000)
      echo "MORDUCHNO, ŻEŚMY WIDZIELI, JAK ŻEŚ STAREGO DZIADA ZJEBAŁA"
      sleep(2000)
      echo "BARDZO DOBRZE, TAK TRZEBA Z FRAJERAMI, PIĘKNE TO BYŁO"
      sleep(2000)
      echo "MASZ SZACUNEK NA DZIELNI, JAK COŚ, TO MOŻESZ NA NAS LICZYĆ"
      sleep(2000)
      echo "W stresie się uśmiechasz i przybijasz piątkę w wyciągniętą dłoń Sebixa"
      sleep(2000)
      echo "W zasadzie wszystko dobrze się ułożyło, nie ma co narzekać"
      sleep(2000)
      eq.add("z sebixową mocą")
    else:
      echo "Postanawiasz nie ryzykować, może to się skończyć źle"  
      sleep(2000)
      echo "Już Ci się odechciało iść po fajki, zawracasz inną drogą i idziesz do domu"
      sleep(2000)
      echo "Na szczęście kilka fajek Ci zostało, zapalisz na balkonie"
      eq.delete(eq.find("szacunek ludzi ulicy"))
      blcksls_balkon()
  else:
    echo "Hm, no dobra, jak już wyszłaś, to szkoda wracać"
    sleep(1000)
    echo "Przyspieszasz, ale dziesz nadal w stronę sklepu"

  echo "W końcu udaje Ci się dojść do celu"
  sleep(1000)
  echo "Płazi szyld świeci zachęcająco zielonym neonem wsród michałkowickich mgieł"
  sleep(2000)
  echo "Wchodzisz, ale orientujesz się, że... nie masz karty ani żadnych pinionszków, telefonem też niezbyt możesz płacić, przyps XD"
  sleep(3000)

  if eq.contains("z sebixową mocą"):
    echo "Zastnawiasz się, co zrobić. Nagle do sklepu wchodzi... szefo wcześniej spotkanych Sebixów!"
    sleep(2000)
    echo "Mówi NO ELO MORDO, CUSZ ZA SPOTKANIE, CO TAKA SMUTNA"
    sleep(2000)
    echo "Mówisz mu, że nie masz za co kupić fajeczek i przyps, na co Sebix odpowiada:"
    sleep(2000)
    echo "MORDO, WEŹ, MY TU SOM MICHAŁKOWICKIE ZIOMECZKI, WSPIERAĆ SIĘ MUSIMY, MÓWIŁEM, ŻE MOŻESZ NA NAS LICZYĆ"
    sleep(3000)
    echo "Sebix kupuje Ci papiroski, wychodzicie przed Płazosklep i dzielisz się z nim fajeczką"
    eq.add("Camelki")
    sleep(2000)
    echo "Okazuje sie, że Sebix ma na imię Pieter i to serio spoko morda, po tej rozmowie od razu Ci lepij"
    hp += 10
    sleep(2000)
    echo "Ale po papirosku nie, bo to słabe dla zdrówka i fuj, po co palisz"
    hp -= 5 
    sleep(2000)
    echo "Po tej przygodzie Twoje zdrówko wynosi: " & $hp
    sleep(2000)
    echo "Dobra, czas wrócić do domu!"
    blcksls_domena()
  elif eq.contains("przyjaźń międzygatunkowa"):
    echo "Nagle słyszysz jakieś dziwne odgłosy przed Płazosklepem, wychodzisz sprawdzić co to"
    sleep(2000)
    echo "Koło śmietnika stoi pokaźnych rozmiarów pajunk, mruga do Ciebie i zauważasz, że między odnóżami trzyma... Twoją kartę"
    sleep(3000)
    echo "Pajunk rzuca Ci kartę, głaskasz go i mówisz GOOD BOI"
    sleep(2000)
    echo "Kupujesz fajeczki, wychodzisz przed sklep, pajunk nadal na Ciebie czeka"
    sleep(2000)
    echo "Kiedy wracasz do domu, widzisz, że podąża za Tobą zadowolony z siebie"
    sleep(2000)
    blcksls_domena()
  else: 
    echo "Kierwa, ale przyps, przepraszasz po cichu i uciekasz do domu"  
    sleep(2000)
    echo "Zdecydowanie starczy Ci na dziś"
    hp -= 10
    blcksls_domena()
  