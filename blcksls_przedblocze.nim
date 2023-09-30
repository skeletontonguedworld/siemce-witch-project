import os
import std/strutils
import blcksls_zmienne
import blcksls_piwnica
import blcksls_targowisko

proc blcksls_przedblocze*() =

  echo "Postanawiasz wyjść z domu, wychodzisz z klatki, niestety na ławce siedzi sąsiadka, która zaczyna zagadywać" 
  sleep(3000) 
  echo "DZIOŁCHA, JO ŻECH CIĘ TU NIE WIDZIOŁA WCZECZEŚNIEJ! SKOMT JESTEŚ?" # nope, nadal nie umiem Śluskiego, nie będę nawet udawać XD
  sleep(3000)
  echo "Musisz myśleć szybko, co kcesz zrobić, odejść i robić swoje, czy odpowiedzieć?"
  var przedblokarz = readLine(stdin)

  if przedblokarz == "Spierdalaj" or przedblokarz.contains("odej"):
    echo "Uciekasz jak najszybciej, nie będziesz przecież rozmawiać ze starymi plotkarami"
    sleep(2000)
    echo "Widzisz jednak, że stara kobieta mamrocze coś pod nosem i w momencie doznajesz dziwnego uczucia wiercenia w głowie i dreszczy"
    hp -= 37
    sleep(3000)
    echo "Twoje zdrówko to teraz: " & $hp
    eq.add("klomtwam Michałkowic")
    for rzeczy2 in eq:
        echo rzeczy2
    echo "Przechodząc koło śmietników, zauważasz małego szczura, przerażony zaczyna Cię obwąchiwać i wygląda, jakby Cię kciał dzieś zaprowadzić. Idziesz za nim?"
    var przedblokarz2 = readLine(stdin)
    if przedblokarz2.contains("ak"):
      echo "Postanawiasz iść za szczurem, w końcu nie wygląda to na nix normalnego, a co Ci szkodzi"
      sleep(3000)
      echo "Szczur prowadzi Cię do piwnicy"
      blcksls_piwnica()
    else:
      echo "Dobra, nie masz siły na jakieś bzdury, ale jak już wyszłaś z domu, to możesz iść po papiroski" 
      blcksls_targowisko()
  elif przedblokarz.contains("odp"):
    echo "Opowiadasz kobiecie. Chociaż wypytuje strasznie, to starasz się być miła, jednak dość szybko kończysz rozmowę, bo nie masz czasu na pierdoły"
    sleep(3000)
    echo "Jednak masz wrażenie, że po tej rozmowie czujesz się lepiej"
    sleep(3000)
    echo "Kobieta uśmiecha się do Ciebie i mamrocze coś pod nosem"
    sleep(3000)
    hp += 666
    echo "Twoje zdrówko to teraz: " & $hp
    sleep(1000)
    echo "A jak już wyszłaś z domu, to może pójdziesz po fajurki"
    blcksls_targowisko()
  else:
    echo "Coś średnia ta odpowiedź, nie?"  