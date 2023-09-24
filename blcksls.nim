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

    of Lokacje.Balkon_Siemianowickch_Horrorów: 
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
          hp -= 21
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
            hp += 21
            echo "Od razu lepij. Twoje zdrówko to teraz: " & $hp
            sleep(2000)
            echo "Przypomniasz sobie, że palenie nie jest jednak zdrowe i nie powinnaś się tak czuć"
            hp -= 10
            eq.add("przyjaźń międzygatunkowa")
          elif balkoniarz3.contains("ie"):
            echo "A po co Ci pomoc jakiegoś pajunka, napierdalasz sama macki łapami, ale nie przynosi to wielkiego efektu"
            sleep(3000)
            echo "Macka uderza Cię w głowę, ostatkiem sił wracasz do mieszkania"
            sleep(2000)
            hp -= 66
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
            hp -= 70
        else: 
          echo "Jak Ty nie kcesz walczyć, to po co walkę wybrałaś, hęęęęę?"    
      else:
        echo "Przerażona uciekasz, postanawiasz nie podejmować walki z Siemianowickimi Przedwiecznymi, bo to za potężny przeciwnik"  
      sleep(3000)
      echo "No nix, pora iść dalij"

    of Lokacje.Piwniczne_Mokradła: #notki dla mnie: pododawać sporo sleepów, żeby się tak szybko tekst nie pojawiał - to notka do całości w sumie XDDD
      echo "Po roku mieszkania w Siemcach postanawiasz zejść do piwnicy i sprawdzić, czy ona w ogóle istnieje, bo nigdy w niej nie byłaś"
      sleep(3000)
      echo "Zjeżdżasz windą, schodzisz kawałek po schodach i widzisz wodę stojącą w piwnicy, ZNÓW, pewnie po ostatnich deszczach, co robisz? Kcesz tam iść czy kurwować na SSM?"
      var piwniczak = readLine(stdin)

      if piwniczak == "Kurwuję na SSM" or piwniczak.contains("SSM"):
        echo "Nagle za Tobą pojawia sie sąsiad i mówi *O PANI, DOKŁADNIE TAK, PŁACIMY TYLE PINIENDZY ZA CZYNSZ, A POTEM PIWNICA PO KAŻDYM DESZCZU ZALANA, W TYM KRAJU NIC, TYLKO BY PINIONSZKI BRALI*"
        sleep(3000)
        echo "Odpowiadasz *NO DOKŁADNIE, SYNKI SPRYTNE, A ROBIĆ NI MA KOMU, TRZEBA TO ZMIENIĆ*"
        sleep(2000)
        echo "Sąsiad patrz na Ciebie, kiwa głową, wpycha Ci coś do ręki i ucieka"
        sleep(2000)
        echo "Zyskujesz członkostwo spółdzielni"
        eq.add("członkostwo SSM")
        for rzeczy in eq:
          echo rzeczy   
      elif piwniczak == "Kurwa idę" or piwniczak.contains("id"):
        echo "Wchodzisz do piwnicy i czujesz, że mógł to być błąd, czujesz wodę w butach, ale jak i tak są mokre, to postanawiasz iść dalij"
        sleep(2000)
        hp -= 6
        echo "Twoje zdrówko to teraz: " & $hp
        sleep(2000)
        echo "Kiedy błądzisz chwilę po piwnicy, w poszukiwaniu swojej, zauważasz wielkie czerwone drzwi z napisem NIE WCHODZIĆ!!!!!!!!! Co robisz?"
        var piwniczak2 = readLine(stdin)

        if piwniczak2.contains("id"):
          echo "Ciągniesz za klamkę dla beczuni, bo nikt Ci nie będzie mówił, co masz robić *Rein - There Is No Authority But Yourself gra wolmo w tle*"
          sleep(3000)
          echo "Zaskakująco, drzwi są otwarte, myśzlisz, że na chuj ktoś daje kartki na drzwiach, jak po prostu mógł zamknąć, ale co kto lubi"
          sleep(3000)
          echo "W pomieszczeniu jest ciemno i pusto, nagle jednak zapala się światło, pewnie to gunwo na czujnik ruchu, i oświetla gigantycznego szczura w koronie z petów na czymś co wygląda jak kupa starych szmat"
          sleep(3000)
          echo "Zastanawiasz się, czy nie zeżarłaś tego żelka z 420, ale chyyyba nie. Nagle włącza się kolejne światło i pada na nóż leżący na podłodze"
          sleep(3000)
          echo "Co robisz? Siegasz po nóż i próbujesz zabić Króla Szczurów, czy nie robisz nic?"
          var piwniczak3 = readLine(stdin)

          if piwniczak3.contains("zab") or piwniczak3.contains("nóż"):
            echo "Siegasz po nóż i postanawiasz spróbować zabić szczura, nie będzie Ci się takie coś plątać po piwnicy, jeszcze jakąś dżumę przyniesie"
            sleep(3000)
            echo "Walka była ciężka, ale udało Ci się, patrzysz z satysfakcją na ciało Króla, które teraz wydaje Ci się małe, nagle czerwone oczy wpatrują się w Ciebie"
            sleep(3000)
            echo "Chyba naprawdę naćpałaś się żeleczkiem, bo szczur zamienia się w człowieka i ostatnimi słowami umierającego, przemawia do Ciebie"
            sleep(3000)
            echo "...Ty skurwysynu, zgnijesz w piekle..."
            sleep(3000)
            echo "Stoisz jak sparaliżowana, spoglądasz jednak na swoje ręcę spływające krwią, ZABIŁAŚ KURWA CZŁOWIEKA, do tego widzisz wypływającą krew z Twojego uda, wygląda jak coś, co soon będzie miało zakażenie"
            sleep(3000)
            hp -= 420
            echo "Twoje zdrówko to teraz: " & $hp & " i powinnaś nie żyć, ale do takiego poziomu programowania nie doszłam, bo się zgubię w pętelkach"
          elif piwniczak3.contains("nic"):
            echo "Postanawiasz nie robić nic, szczur patrzy na Ciebie z ufością i zaczna się zbliżać"
            sleep(3000)
            echo "Uznajesz, że elo, jakby kciał Cię zabić, to by już zabił, więc wyciągasz rękę i też podchodzisz coraz bliżej"
            sleep(3000)
            echo "Szczur wącha Twoją rękę i wyciąga pyszczek, zaczynasz go głaskać po uroczej mordce, wcale nie jest taki straszny, siadasz, pozwalasz mu wejść na kolana, w sumie jest jak kitek, uroczy"
            sleep(5000)
            echo "Po chwili masz wrażenie, że jednak jesteś naćpana, bo szczur zamienia sie w jakiegoś typiarza, odskakujesz i mówisz CO TO KURWA ZA MAGIJA, TYPIE, TAK SIĘ NIE ROBI, MIAŁEŚ BYĆ SZCZUREM, HĘĘĘ???"
            sleep(5000)
            echo "Typ mówi NO SORRY MORDO, MYŚLISZ, ŻE WYBIERAM, KIEDY SIĘ ZAMIENIE W CZŁOWIEKA? Zła czarownica przed blokiem rzuciła na mnie klątwę i po czasie zamieniłem się w szczura i nie miałem dużego wyboru, zacząłem żyć w piwnicy"
            sleep(5000)
            echo "Czarownica powiesiła kartkę, żeby nie wchodzić, a nawet jak ktoś się sprzeciwił i wszedł, to bał się takiego gigantycznego, paskudnego szczura"
            sleep(5000)
            echo "Mówisz, że no in fact, wolałaś go jako szczura, ale co kto lubi"
            sleep(3000)
            echo "Typo się śmieje, chociaż to nie był żart z Twojej strony, ale okej. Mówi, że dziękuje Ci, bo odczyniłaś klątwę i teraz masz dwie opcje, albo będziecie razem jak w bajkach albo dostaniesz od niego nagrodę"
            sleep(5000)
            echo "To nie jest żadna decyzja, chyba Cię graczu pojebało, że Kari będzie kciałam być z random typem, którego widzisz pierwszy raz w żyćku, do tego przed chwilą był ściurem, mówisz typowi, żeby się ubrał w ogóle, bo beczunia, że o tym nie pomyślał, jak ma tron ze szmat i wybierasz nagrodę"
            sleep(5000)
            echo "Dobru, jak kcesz, nadal Ci dziękuję, chociaż widzę, że odrzucasz prawdziwą piwniczną miłość"
            sleep(3000)
            echo "Typo wkłada Ci coś w dłoń i odchodzi"
            eq.add("sens żyćka")
            eq.add("naszyjnik z małym ściurem")
            for piwnicznerzeczy in eq:
              echo piwnicznerzeczy
            echo "Otwierasz dłon i widzisz na niej naszyjnik z małym szczurkiem i karteczkę, czytasz, cu jest na niej napisane"
            sleep(3000)
            echo "SENSEM ŻYĆKA JEST BYĆ DOBRYM CZŁOWIEKIEM, MIEĆ EMPATIĘ I ZROZUMIENIE I ZAWSZE BRONIĆ SŁABSZYCH"
            sleep(3000)
            echo "Uśmiechasz się, patrząc za kurzem, ktróry tańczy w lekkim świetle piwncy i czujesz dziwne spełnienie, ogarniające Twoje ciało"
          else:
            echo "Niii, weź na pytanie odpowiedz, cu Ty robisz ;_;"

        elif piwniczak2.contains("nie"): 
          echo "No po coś ta kartka wisi, nie wchodzisz, piwnicy tyż nie znalazłaś, więc zmęczona i z wodą w butach po prostu odchodzisz" 
          sleep(3000)
          hp -= 21
          echo "Twoje zdrówko to teraz: " & $hp
        else:  
          echo "Znow nie umiesz opowiadać na pytania, nie?"

      else:
        echo "Sama nie wiesz, co robić, wracasz"

    of Lokacje.Przedblocze: # notki dla mnie: rozbudować dialogi może trochę, ifów wincyj (?)
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

    of Lokacje.Domena_Kari:
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

echo "Finalnie Twoje zdrówko wynosi: " & $hp & " a w Twoim ekwipuneczku jest: " 
sleep(2000)
for rzeczyfinal in eq:                                                           
  echo rzeczyfinal
sleep(2000)

if eq.contains("sens żyćka"):
  echo "Brawo, udało Ci się odnaleźć sens żyćka, może trochę późno, ale zawsze cuś"
else:
  echo "Nietstety, coś nam nie poszło, ale możesz spróbować ponownie!"  
