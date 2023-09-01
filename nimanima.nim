import std/strutils
import os

var punkty = 0

echo "TEST NA PRAWDZIWEGO POLAKA"
sleep(3000)

echo "1) Podej liczbę"

var cuowiek = readLine(stdin)

case parseInt(cuowiek):
    of 21: echo "Mniejsza połowa papieżowej"
    of 37: echo "Większa połowa papieżowej"
    of 2137: echo "Cała papieżowa"
    of 420: echo "Funny number ha ha"
    else: echo "Ta odpowiedź nie może zostać zaakceptowana przez Komisję Prawdziwych Polaków"

if parseInt(cuowiek) == 21: 
    punkty += 2
elif parseInt(cuowiek) == 21: 
    punkty += 2
elif parseInt(cuowiek) == 2137:
    punkty += 3
elif parseInt(cuowiek) == 420:
    punkty -= 1 
else:
    echo "XDXD"

echo "Twoje punkty po pierwszym pytaniu to:"
echo punkty

echo "2) Kto jest największym Polakiem?"

var cuowiek2 = readLine(stdin)

case cuowiek2:
    of "Jan Paweł II": echo "Bardzo dobrze. Tak, jak pan Jezu powiedział!"
    of "Karol Wojtyła": echo "Bdb, zdałeś test na Prawdziwego Polaka"
    of "Bestia z Wadowic": echo "W tym momencie zostaje Ci odebrane polskie obywatelstwo, szegnam"
    else: echo "Zła odpowiedź, umierasz"

if cuowiek == "Jan Paweł II": 
    punkty += 3
elif cuowiek == "Karol Wojtyła": 
    punkty += 2
elif cuowiek == "Bestia z Wadowic":
    punkty -= 666

echo "Twoje punkty po drugim pytaniu to:"
echo punkty
sleep(3000)

echo "3) Gdzie w mieszkaniu masz kosze na śmieci?"

var cuowiek3 = readLine(stdin)

case cuowiek3:
    of "Pod zlewem": echo "I prawidłowo, każdy Polak jest z Ciebie dumny!"
    else: echo "Oj, nie jest dobrze, ale mogło być gorzej"

if cuowiek3 == "Pod zlewem":
    punkty += 5
else:
    punkty -= 1

echo "Twoje punkty po trzecim pytaniu to:"
echo punkty
sleep(3000)

echo "4) Czy masz powieszoną szmatkę na piekarniku?"

var cuowiek4 = readLine(stdin)

case cuowiek4:
    of "Tak": echo "Prawidłowa odpowiedź, cieszę się!"
    of "Nie": echo "Smuci mnie to, piekarnik bez szmatki to jak dom bez duszy"
    else: echo "To było proste pytanie..."

if cuowiek4 == "Tak":
    punkty += 2
else:
    punkty -= 2

echo "Twoje punkty po czwartym pytaniu to:"
echo punkty
sleep(3000)

echo "5) Czy masz w domu reklamówkę z innymi reklamówkami w środku?"

var cuowiek5 = readLine(stdin)

case cuowiek5:
    of "Tak": echo "Bardzo dobrze, mam nadzieję, że pudełko z kablami, które kiedyś się mogą przydać też masz"
    of "Nie": echo "Źle, nigdy nie wiesz, kiedy może Ci się takie cuś przydać"
    else: echo "Kolejne proste pytanie..."

if cuowiek4 == "Tak":
    punkty += 2
else:
    punkty -= 2

echo "Twoje punkty po piątym pytaniu to:"
echo punkty
sleep(3000)