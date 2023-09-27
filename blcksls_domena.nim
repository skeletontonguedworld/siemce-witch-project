import os
import std/strutils
import blcksls_zmienne

proc blcksls_domena*() =

  echo "Jesteś w domu, w sumie milutko, fajen, ale słyszysz dzwonek do drzwi"
  sleep(2000)
  echo "Co robisz, otwierasz drzwi?"
  var domowczarz = readLine(stdin)

  if domowczarz.contains("tak"):
    echo "Jesteś poważną, dorosłą osobą, więc myślę, że dasz radę, patrzysz kto to i otwierasz drzwi"
    sleep(3000)
    echo "Znów ktoś przylazł po pinionszki, o panie, mogłaś nie otwierać, teraz Ci głupio strasznie, ale musisz to powiedzieć"
    sleep(3000)
    echo "PANI KIERWA, PRZY MOJEJ WYPŁACIE, TO JA JESTEM BIEDNA I NA MNIE TRZEBA ZBIERAĆ, SAMA ZACZNĘ NIEDŁUGO PO BLOKACH CHODZIĆ"
    sleep(3000)
    echo "Typiara odchodzi smutna, a Tobie nadal jakos głupio"
    sleep(3000)
    eq.add("wizyta1")
    hp -= 21
    echo "Twoje zdrówko to teraz: " & $hp
  else:
    echo "Nie otwierasz tych drzwi, jebać, nienawidzisz ich wszystkich i tak"  
    sleep(3000) 
  echo "Dopiero co usiadłaś i kolejny dzwonek do drzwi, czy ich kurwa pojebało"
  sleep(2000)
  echo "Czy tym razem otworzysz?"
  var domowczarz2 = readLine(stdin)

  if domowczarz2.contains("tak"):
    echo "Patrzysz, kto to jest i otwierasz drzwi, poczta"
    sleep(3000)
    echo "Babeczka pyta, czy to Adrian Jakiśtam, myślisz CZY JA KIERWA WYGLĄDAM NA ADRIANA, ale starasz się być miła i tłumaczysz, babeczka odchodzi" # ty by można kolejne ify robić z byciem miłym i nie, ale idk
    sleep(3000)
    hp += 21
    eq.add("wizyta2")
    echo "Czujesz się jakoś troszku lepij, że udało Ci się to ogarnąć. Twoje zdrówko to teraz: " & $hp
  else:
    echo "Nie otwierasz, masz już po prostu dość XD"
  echo "Nie zdążyłaś odejść od drzwi, a tu trzeci dzwonek, kurwa ja pierdolę. Czy teraz otworzysz?"
  var domowczarz3 = readLine(stdin)

  if domowczarz3.contains("tak"):
    echo "Otwierasz, a tam typo z DZIEM DOBRY, JA OD ODCZYTU PODZIELNIKÓW, masz ochotę powiedzieć, że masz dopiero 30 latek i nikogo dorosłego nie ma w domu, ale no, chyba musisz wpuścić typa"
    sleep(5000)
    hp += 21
    eq.add("wizyta3")
    echo "Typo ze przeszedł, zrobił odczyt, poszedł, w sumie poszło bez problemu, czujesz ulgę, że sie udało i jakoś Ci lepiej, Twoje zdrówko to: " & $hp
  else:
    echo "Nie no kierwa, ileż można, nie otwierasz"
    
  if eq.contains("wizyta1") and eq.contains("wizyta2") and eq.contains("wizyta3"):
    eq.delete(eq.find("wizyta1"))
    eq.delete(eq.find("wizyta2"))
    eq.delete(eq.find("wizyta3"))
    eq.add("sens żyćka")
    echo "Po wszystkich tych dziwen wizytach, odkrywasz, że prawdziwym sensem żyćka jest... brak sensu żyćka, bo nie każdy go musi mieć"
    sleep(3000)
    echo "Ciebie satsfakcjonuje w pełni brak większego celu, siedzenie pod kocykiem z herbatką i ksiunszeczką. No i święty spokój"
    sleep(3000)
    echo "Dziwne jest, że człowiek potrzebuje random wizyt random ludzi, żeby uświadomić sobie tak proste rzeczy!"
    sleep(3000)