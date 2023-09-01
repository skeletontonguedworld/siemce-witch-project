import std/strutils

var eq = @["pinionszki"]

echo "Witam, panie złoty, po jaką miksturkę pan przyszedł?"

var panecek = readLine(stdin)

while true:
    if panecek == "lecznicza":
        echo "Proszu, oto miksturka lecznicza!"
        break
    elif panecek == "spanko":
        echo "Przykro mje, nie mamy, proszu wyjść i kolejki nie zajmować"
        break
    else:
        echo "Przykro mje albo lecznicza albo spanko, wincyj ziół nie zebrałam"

echo "A ile panie tych miksturek dać?"

var panecek2 = readLine(stdin)

if parseInt(panecek2) < 3:
    echo "Proszum, proszu mje teras dać pinionszki, dziemkujem i zapraszam ponownie :3"
    eq.delete(0)
    eq.add("miksturka")
else:
    echo "A to przepraszam, tyle ni ma XD"

echo "A to Twój ekwipuneczek :3"
echo eq
