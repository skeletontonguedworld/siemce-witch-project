import os
import std/strutils
import blcksls_zmienne

proc blcksls_piwnica*() =

  if eq.contains("klomtwam Michałkowic"): # rozbuduj i zmień trochę te opcje dialogowe, możliwe, że nie będzie się zdobywać sensu żyćka i odmieniać szczura, ino zdjęcie klątwy 
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
          eq.delete(eq.find("klomtwam Michałkowic"))
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