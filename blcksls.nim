import os
import std/strutils
import blcksls_zmienne
import blcksls_balkon
import blcksls_domena
import blcksls_piwnica
import blcksls_przedblocze
import blcksls_targowisko

while hp > 0:

  if eq.contains("sens żyćka"):
    break

  echo "Witaj w niesamowitej podróży dorosłego człowieka w queście odnalezienia sensu żyćka!"
  sleep(2000)
  echo "Dzie zaczniemy nasze poszukiwania? Nietstety z racji tego, że Kari nie rusza się za daleko z domu, masz do wyboru tylko kilka lokacji"
  sleep(3000)
  echo "Co kcesz odwiedzić jako pierwsze?"
  sleep(2000)
  echo "Domena Kari, Balkon Siemianowickich Horrorów, Piwniczne Mokradła, Przedblocze"
  var giereczkowacz = readLine(stdin)

  case giereczkowacz:
    of "Balkon Siemianowickich Horrorów": jesteśtu = Lokacje.Balkon_Siemianowickch_Horrorów
    of "Piwniczne Mokradła": jesteśtu = Lokacje.Piwniczne_Mokradła
    of "Przedblocze": jesteśtu = Lokacje.Przedblocze
    of "Domena Kari": jesteśtu = Lokacje.Domena_Kari
    of "Płazowe Targowisko Papirosków": jesteśtu = Lokacje.Płazowe_Targowisko_Papirosków

  sleep(1000)
  echo "Jesteś w: " & $jesteśtu
  sleep(1000)
  
  case jesteśtu:
    of Lokacje.Balkon_Siemianowickch_Horrorów: blcksls_balkon()
    of Lokacje.Piwniczne_Mokradła: blcksls_piwnica() 
    of Lokacje.Przedblocze: blcksls_przedblocze()
    of Lokacje.Domena_Kari: blcksls_domena()
    of Lokacje.Płazowe_Targowisko_Papirosków: blcksls_targowisko()

sleep(2000)      
echo "Finalnie Twoje zdrówko wynosi: " & $hp & " a w Twoim ekwipuneczku jest: " 
sleep(2000)
for rzeczyfinal in eq:                                                           
  echo rzeczyfinal
sleep(2000)

if eq.contains("sens żyćka"):
  sleep(2000)
  echo "Brawo, udało Ci się odnaleźć sens żyćka, może trochę późno, ale zawsze cuś"
else:
  sleep(2000)
  echo "Nietstety, coś nam nie poszło, ale możesz spróbować ponownie!"  