import std/tables

var kari = ("czarwonica", false, 2137)
var kari2 = (nazwa: "Papieska", liczba: 2137)

echo kari[0]
echo kari[1]
echo kari[2]

echo kari2.nazwa
echo kari2.liczba

var żyćko = { 1995: "Kari siem urodziła",
              2001: "Kari widziała Shreka",
              2013: "Kari była kinderpunkiem ze śmiesznym irokezem",
              2019: "Kari skończyła studia i zaczęła prackę i na tym jej szyćko siem skończyło '_'" }.toTable

echo "Co robiła Kari w 2001?"
echo żyćko[2001]

żyćko[2020] = "A cusz to było za wydarzonko :3"

echo żyćko[2020]