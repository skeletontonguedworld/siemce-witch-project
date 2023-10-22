import std/strutils

var ziółka = readFile("zioła.txt")

while true:
  echo "Witaj, czy kcesz wyświetlić listę random ziół z Morka?"
  let ty = readLine(stdin)
  if ty.contains("ta"):
    echo "Oto lista ziółek: " & $ziółka
  elif ty.contains("wyj"):
    break  
  else:
    echo "NIE TO NIE"
