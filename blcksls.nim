import os
import std/strutils
import blcksls_zmienne
import blcksls_balkon
import blcksls_domena
import blcksls_piwnica
import blcksls_przedblocze

while hp > 0:

  if eq.contains("sens żyćka"):
    break

  echo "Witaj w niesamowitej podróży dorosłego człowieka w queście odnalezienia sensu żyćka!"
  sleep(2000)
  echo "Dzie zaczniemy nasze poszukiwania? Nietstety z racji tego, że Kari nie rusza się za daleko z domu, masz do wyboru tylko kilka lokacji"
  sleep(3000)
  echo "Co kcesz odwiedzić jako pierwsze?"
  echo "Domena Kari, Balkon Siemianowickich Horrorów, Piwniczne Mokradła, Przedblocze"
  sleep(2000)
  var giereczkowacz = readLine(stdin)

  case giereczkowacz:
    of "Balkon Siemianowickich Horrorów": jesteśtu = Lokacje.Balkon_Siemianowickch_Horrorów
    of "Piwniczne Mokradła": jesteśtu = Lokacje.Piwniczne_Mokradła
    of "Przedblocze": jesteśtu = Lokacje.Przedblocze
    of "Domena Kari": jesteśtu = Lokacje.Domena_Kari

  echo "Jesteś w: " & $jesteśtu
  
  case jesteśtu:
    of Lokacje.Balkon_Siemianowickch_Horrorów: blcksls_balkon()
    of Lokacje.Piwniczne_Mokradła: blcksls_piwnica() 
    of Lokacje.Przedblocze: blcksls_przedblocze()
    of Lokacje.Domena_Kari: blcksls_domena()
      
echo "Finalnie Twoje zdrówko wynosi: " & $hp & " a w Twoim ekwipuneczku jest: " 
sleep(2000)
for rzeczyfinal in eq:                                                           
  echo rzeczyfinal
sleep(2000)

if eq.contains("sens żyćka"):
  echo "Brawo, udało Ci się odnaleźć sens żyćka, może trochę późno, ale zawsze cuś"
else:
  echo "Nietstety, coś nam nie poszło, ale możesz spróbować ponownie!"  
