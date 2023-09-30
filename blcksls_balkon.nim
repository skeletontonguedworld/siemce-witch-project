import os
import std/strutils
import blcksls_zmienne
import std/random
randomize()

proc blcksls_balkon*() =

  echo "Pomimo dziwnych cieni na bloku, postanawiasz wyjść zapalić"
  sleep(2000)
  echo "Kiedy odpalasz papieroska, zauważasz gigantyczną mackę, która próbuje Ci go wyrwać"
  sleep(2000)
  echo "Co robisz? Uciekasz, czy próbujesz walczyć?"
  var balkoniarz = readLine(stdin)
  if balkoniarz.contains("wal"):
    echo "Papiroski som drogie, więc nie uciekasz tylko próbujesz walczyć. Wybierz swoją broń!"
    echo "Zapalniczka, Ręka, Kolce z balkonu"
    var balkoniarz2 = readLine(stdin)
    if balkoniarz2.contains("pal"):
      echo "Próbujesz odgnonić mackę światłem z zapalniczki"
      sleep(2000)
      echo "Lekko przypalona macka się odsuwa, lecz niestety, udaje jej się zrobić Ci dwie wampirze ranki na łokciu"
      sleep(3000)
      echo "Odnosisz lekkie obrażenia"
      hp -= rand(10..21)
      echo "Twoje zdrówko to teraz: " & $hp
    elif balkoniarz2.contains("ęka"):
      echo "Machasz ręką jak pojebion i próbujesz odgonić mackę. Nix Ci nie będzie przeszkadzać na Twoim balkonie"
      sleep(2000)
      echo "Nagle zauważasz przyjacielskiego pajunka, którego postanowiłaś kiedyś nie zabijać, patrzy na Ciebie swoimi wszystkimi oczami"
      sleep(3000)
      echo "Wygląda, jakby kciał Ci pomóc, to w końcu teraz WASZ balkon! Czy przyjmiesz jego pomoc?"
      var balkoniarz3 = readLine(stdin)
      if balkoniarz3.contains("ak"):
        echo "Patrzysz się na pajunka i mówisz DAJESZ MALUTKI, ROZJEBIEMY TE MACKI"
        sleep(2000)
        echo "Pajunk macha odnóżami, jak się zgodził i atakujecie macki razem, pajunk wgryza się w jedną, Ty skopujesz drugą z kafelków"
        sleep(3000)
        echo "Siemianowicie Horrory nie sądziły, że zostaną pokonane siłą przyjaźni międzygatunkowej, ale chyba się udało, nie widzisz ich w pobliżu"
        sleep(3000)
        echo "Zbijasz piątkę z pajunkiem, czujesz się fantastycznie i dopalasz spokojnie fajeczkę"
        hp += rand(21..37)
        echo "Od razu lepij. Twoje zdrówko to teraz: " & $hp
        sleep(2000)
        echo "Przypomniasz sobie, że palenie nie jest jednak zdrowe i nie powinnaś się tak czuć"
        hp -= rand(10..15)
        eq.add("przyjaźń międzygatunkowa")
      elif balkoniarz3.contains("ie"):
        echo "A po co Ci pomoc jakiegoś pajunka, napierdalasz sama macki łapami, ale nie przynosi to wielkiego efektu"
        sleep(3000)
        echo "Macka uderza Cię w głowę, ostatkiem sił wracasz do mieszkania"
        sleep(2000)
        hp -= rand(50..66)
        echo "Leżysz chwilę na podłodze, nie masz siły, nie wiesz czemu, ale na ścianie wyświetla Ci się napis TWOJE ZDROWIE DRASTYCZNIE SPADA, WYNOSI TERAZ: " & $hp
      else:
        echo "Dobra, to nie ma sensu, jak cały ten kod"
    elif balkoniarz2.contains("kolc"):
        echo "Próbujesz wyrwać plastikowe kolce na gołębie z barierek, idzie opornie, ale się udaje, uderzasz, w mackę wbija się plastik" 
        sleep(3000)
        echo "Słyszysz śmiech, nie wiesz czy Horroru, czy tylko w Twojej głowie, macka w momencie oddaje Ci kolcami"
        sleep(3000)
        if hp > 50:
          echo "Udaje Ci się zrobić unik, chociaż macka lekko zachacza o Twoją głowę, możliwe, że masz jakąs rankę, dotykasz włósów i czujesz na niej trochę krwi"
          hp -= 10
        else:
          echo "Niestety nie udało Ci się zrobić uniku w czas, dostajesz kolcami w głowę, ciesz się, że tą gładką stroną, chociaż uderzenie nadal boli"
          hp -= rand(50..70)
    else: 
        echo "Jak Ty nie kcesz walczyć, to po co walkę wybrałaś, hęęęęę?"    
  else:
    echo "Przerażona uciekasz, postanawiasz nie podejmować walki z Siemianowickimi Przedwiecznymi, bo to za potężny przeciwnik"  
    sleep(3000)
    echo "No nix, pora iść dalij"