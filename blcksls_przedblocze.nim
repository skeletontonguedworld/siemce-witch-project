import os
import std/strutils
import blcksls_zmienne

proc blcksls_przedblocze*() =

  echo "Postanawiasz wyjść z domu, wychodzisz z klatki, niestety na ławce siedzi sąsiadka, która zaczyna zagadywać" 
  sleep(3000) 
  echo "DZIOŁCHA, JO ŻECH CIĘ TU NIE WIDZIOŁA WCZECZEŚNIEJ! SKOMT JESTEŚ?" # nope, nadal nie umiem Śluskiego, nie będę nawet udawać XD
  sleep(3000)
  echo "Musisz myśleć szybko, co kcesz zrobić, odejść i robić swoje, czy odpowiedzieć?"
  var przedblokarz = readLine(stdin)

  if przedblokarz == "Spierdalaj" or przedblokarz.contains("odej"):
    echo "Uciekasz jak najszybciej, nie będziesz przecież rozmawiać ze starymi plotkarami"
    sleep(3000)
    echo "Widzisz jednak, że stara kobieta mamrocze coś pod nosem i w momencie doznajesz dziwnego uczucia wiercenia w głowie i dreszczy"
    hp -= 37
    sleep(3000)
    echo "Twoje zdrówko to teraz: " & $hp
    eq.add("klomtwam Michałkowic")
    for rzeczy2 in eq:
        echo rzeczy2
  elif przedblokarz.contains("odp"):
    echo "Opowiadasz kobiecie. Chociaż wypytuje strasznie, to starasz się być miła, jednak dość szybko kończysz rozmowę, bo nie masz czasu na pierdoły"
    sleep(3000)
    echo "Jednak masz wrażenie, że po tej rozmowie czujesz się lepiej"
    sleep(3000)
    echo "Kobieta uśmiecha się do Ciebie i mamrocze coś pod nosem"
    sleep(3000)
    hp += 666
    echo "Twoje zdrówko to teraz: " & $hp