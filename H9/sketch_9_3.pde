float cijfer1 = 7.9;
float cijfer2 = 5.6;



void setup(){
float antwoord = cijferberkenaar(cijfer1,cijfer2);
println(antwoord);
  
}

void draw(){
  
}

float cijferberkenaar(float getal, float getalTwee){
  float totaal = (getal + getalTwee)/2;
  println ("som " + getal + " + " + getalTwee + " = " + totaal);
  return totaal;
  
}
