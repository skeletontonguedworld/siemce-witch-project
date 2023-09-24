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
  sleep(2000)
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

    of Lokacje.Balkon_Siemianowickch_Horrorów: # notki dla mnie: rozbudować walkę z macką, coś żeby się wincyj zdrowia traciło i nie była taka krótka
      echo "Pomimo dziwnych cieni na bloku, postanawiasz wyjść zapalić"
      sleep(2000)
      echo "Kiedy odpalasz papieroska, zauważasz gigantyczną mackę, która próbuje Ci go wyrwać"
      sleep(2000)
      echo "Papiroski som drogie, więc nie uciekasz tylko próbujesz odgnonić mackę światłem z zapalniczki"
      sleep(2000)
      echo "Lekko przypalona macka się odsuwa, lecz niestety, udaje jej się zrobić Ci dwie wampirze ranki na łokciu"
      sleep(2000)
      echo "Odnosisz lekkie obrażenia"
      hp -= 21
      echo "Twoje zdrówko to teraz: " & $hp
      echo "No nix, pora iść dalij"

    of Lokacje.Piwniczne_Mokradła: #notki dla mnie: pododawać sporo sleepów, żeby się tak szybko tekst nie pojawiał
      echo "Po roku mieszkania w Siemcach postanawiasz zejść do piwnicy i sprawdzić, czy ona w ogóle istnieje, bo nigdy w niej nie byłaś"
      sleep(2000)
      echo "Zjeżdżasz windą, schodzisz kawałek po schodach i widzisz wodę stojącą w piwnicy, ZNÓW, pewnie po ostatnich deszczach, co robisz? Kcesz tam iść czy kurwować na SSM?"
      var piwniczak = readLine(stdin)

      if piwniczak == "Kurwuję na SSM" or piwniczak.contains("SSM"):
        echo "Nagle za Tobą pojawia sie sąsiad i mówi *O PANI, DOKŁADNIE TAK, PŁACIMY TYLE PINIENDZY ZA CZYNSZ, A POTEM PIWNICA PO KAŻDYM DESZCZU ZALANA, W TYM KRAJU NIC, TYLKO BY PINIONSZKI BRALI*"
        echo "Odpowiadasz *NO DOKŁADNIE, SYNKI SPRYTNE, A ROBIĆ NI MA KOMU, TRZEBA TO ZMIENIĆ*"
        sleep(2000)
        echo "Sąsiad patrz na Ciebie, kiwa głową, wpycha Ci coś do ręki i ucieka"
        echo "Zyskujesz członkostwo spółdzielni"
        eq.add("członkostwo SSM")
        for rzeczy in eq:
          echo rzeczy   
      elif piwniczak == "Kurwa idę" or piwniczak.contains("id"):
        echo "Wchodzisz do piwnicy i czujesz, że mógł to być błąd, czujesz wodę w butach, ale jak i tak są mokre, to postanawiasz iść dalij"
        hp -= 6
        echo "Twoje zdrówko to teraz: " & $hp
        echo "Kiedy błądzisz chwilę po piwnicy, w poszukiwaniu swojej, zauważasz wielkie czerwone drzwi z napisem NIE WCHODZIĆ!!!!!!!!! Co robisz?"
        var piwniczak2 = readLine(stdin)

        if piwniczak2.contains("id"):
          echo "Ciągniesz za klamkę dla beczuni, bo nikt Ci nie będzie mówił, co masz robić *Rein - There Is No Authority But Yourself gra wolmo w tle*"
          sleep(2000)
          echo "Zaskakująco, drzwi są otwarte, myśzlisz, że na chuj ktoś daje kartki na drzwiach, jak po prostu mógł zamknąć, ale co kto lubi"
          echo "W pomieszczeniu jest ciemno i pusto, nagle jednak zapala się światło, pewnie to gunwo na czujnik ruchu, i oświetla gigantycznego szczura w koronie z petów na czymś co wygląda jak kupa starych szmat"
          echo "Zastanawiasz się, czy nie zeżarłaś tego żelka z 420, ale chyyyba nie. Nagle włącza się kolejne światło i pada na nóż leżący na podłodze"
          echo "Co robisz? Siegasz po nóż i próbujesz zabić Króla Szczurów, czy nie robisz nic?"
          var piwniczak3 = readLine(stdin)

          if piwniczak3.contains("zab") or piwniczak3.contains("nóż"):
            echo "Siegasz po nóż i postanawiasz spróbować zabić szczura, nie będzie Ci się takie coś plątać po piwnicy, jeszcze jakąś dżumę przyniesie"
            sleep(3000)
            echo "Walka była ciężka, ale udało Ci się, patrzysz z satysfakcją na ciało Króla, które teraz wydaje Ci się małe, nagle czerwone oczy wpatrują się w Ciebie"
            echo "Chyba naprawdę naćpałaś się żeleczkiem, bo szczur zamienia się w człowieka i ostatnimi słowami umierającego, przemawia do Ciebie"
            echo "...Ty skurwysynu, zgnijesz w piekle..."
            echo "Stoisz jak sparaliżowana, spoglądasz jednak na swoje ręcę spływające krwią, ZABIŁAŚ KURWA CZŁOWIEKA, do tego widzisz wypływającą krew z Twojego uda, wygląda jak coś, co soon będzie miało zakażenie"
            hp -= 420
            echo "Twoje zdrówko to teraz: " & $hp & "i powinnaś nie żyć, ale do takiego poziomu programowania nie doszłam, bo się zgubię w pętelkach"
          elif piwniczak3.contains("nic"):
            echo "Postanawiasz nie robić nic, szczur patrzy na Ciebie z ufością i zaczna się zbliżać"
            echo "Uznajesz, że elo, jakby kciał Cię zabić, to by już zabił, więc wyciągasz rękę i też podchodzisz coraz bliżej"
            sleep(2000)
            echo "Szczur wącha Twoją rękę i wyciąga pyszczek, zaczynasz go głaskać po uroczej mordce, wcale nie jest taki straszny, siadasz, pozwalasz mu wejść na kolana, w sumie jest jak kitek, uroczy"
            echo "Po chwili masz wrażenie, że jednak jesteś naćpana, bo szczur zamienia sie w jakiegoś typiarza, odskakujesz i mówisz CO TO KURWA ZA MAGIJA, TYPIE, TAK SIĘ NIE ROBI, MIAŁEŚ BYĆ SZCZUREM, HĘĘĘ???"
            echo "Typ mówi NO SORRY MORDO, MYŚLISZ, ŻE WYBIERAM, KIEDY SIĘ ZAMIENIE W CZŁOWIEKA? Zła czarownica przed blokiem rzuciła na mnie klątwę i po czasie zamieniłem się w szczura i nie miałem dużego wyboru, zacząłem żyć w piwnicy"
            echo "Czarownica powiesiła kartkę, żeby nie wchodzić, a nawet jak ktoś się sprzeciwił i wszedł, to bał się takiego gigantycznego, paskudnego szczura"
            echo "Mówisz, że no in fact, wolałaś go jako szczura, ale co kto lubi"
            echo "Typo się śmieje, chociaż to nie był żart z Twojej strony, ale okej. Mówi, że dziękuje Ci, bo odczyniłaś klątwę i teraz masz dwie opcje, albo będziecie razem jak w bajkach albo dostaniesz od niego nagrodę"
            echo "To nie jest żadna decyzja, chyba Cię graczu pojebało, że Kari będzie kciałam być z random typem, którego widzisz pierwszy raz w żyćku, do tego przed chwilą był ściurem, mówisz typowi, żeby się ubrał w ogóle, bo beczunia, że o tym nie pomyślał, jak ma tron ze szmat i wybierasz nagrodę"
            echo "Dobru, jak kcesz, nadal Ci dziękuję, chociaż widzę, że odrzucasz prawdziwą piwniczną miłość"
            echo "Typo wkłada Ci coś w dłoń i odchodzi"
            eq.add("sens żyćka")
            eq.add("naszyjnik z małym ściurem")
            for piwnicznerzeczy in eq:
              echo piwnicznerzeczy
            echo "Otwierasz dłon i widzisz na niej naszyjnik z małym szczurkiem i karteczkę, czytasz, cu jest na niej napisane"
            echo "SENSEM ŻYĆKA JEST BYĆ DOBRYM CZŁOWIEKIEM, MIEĆ EMPATIĘ I ZROZUMIENIE I ZAWSZE BRONIĆ SŁABSZYCH"
            echo "Uśmiechasz się, patrząc za kurzem, ktróry tańczy w lekkim świetle piwncy i czujesz dziwne spełnienie, ogarniające Twoje ciało"
          else:
            echo "Niii, weź na pytanie odpowiedz, cu Ty robisz ;_;"

        elif piwniczak2.contains("nie"): 
          echo "No po coś ta kartka wisi, nie wchodzisz, piwnicy tyż nie znalazłaś, więc zmęczona i z wodą w butach po prostu odchodzisz" 
          hp -= 21
          echo "Twoje zdrówko to teraz: " & $hp
        else:  
          echo "Znow nie umiesz opowiadać na pytania, nie?"

      else:
        echo "Sama nie wiesz, co robić, wracasz"

    of Lokacje.Przedblocze: # notki dla mnie: rozbudować dialogi może trochę, ifów wincyj (?)
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
        echo "Kobieta uśmiecha się do Ciebie i mamrocze coś pod nosem"
        hp += 666
        echo "Twoje zdrówko to teraz: " & $hp

    else: echo "No dzie kce iść, do domu wrócić, jak w nim je może?"

echo "Finalnie Twoje zdrówko wynosi: " & $hp & " a w Twoim ekwipuneczku jest: " # notki dla mnie: dorobić jeszcze Domenę Kari i tu by buła (mhm, buła, buła to ja chyba XD) 
for rzeczyfinal in eq:                                                          # *była możliwość zdobycia drugiego sensu żyćka, coś o siedzeniu w domu i zgodzie ze sobą 
  echo rzeczyfinal

if eq.contains("sens żyćka"):
  echo "Brawo, udało Ci się odnaleźć sens żyćka, może trochę późno, ale zawsze cuś"
else:
  echo "Nietstety, coś nam nie poszło, ale możesz spróbować ponownie!"  
