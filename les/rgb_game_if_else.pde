/*
Opdracht if

We hebben een RPG game waarin spelers drie dobbelstenen gooien om schade te doen tegen de vijand
Als een van de dobbelstenen een 1 is, wordt er geen schade gedaan. We zeggen dan tegen de speler "mis!".
Anders wordt de schade berekend door het gemiddelde gooi van dobbelstenen te pakken. We vertellen dan tegen de speler : het aantal schade + "HIT!"

>Bonus opdracht<
Als alle drie de dobbelstenen 1 zijn wrijven we dat er lekker in door "Critical MISS!" te zeggen.
Als alle drie dobbelsten 6 zijn feliciteren we de speler door een leuk bericht.
*/

int steen1 = 2;
int steen2 = 5;
int steen3 = 3;

String resultaat = "";

if (steen1 == 1||steen2 == 1||steen3 ==1){
  resultaat=("mis!");
  println(resultaat);
}
else if (steen1 ==1 && steen2 == 1 && steen3 ==1){
  resultaat=("Critical MISS!");
  println(resultaat);
}

else if (steen1 == 6&& steen2 == 6 && steen3 ==6){
    resultaat=("Gefeliciteerd met het gooien van 3 x 6");
    println(resultaat);
}

else{
    float schade = (steen1 + steen2 + steen3)/3;
    println(schade + " HIT");
}
