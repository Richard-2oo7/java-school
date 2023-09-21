int x1;
int y1;
int x2;
int y2;
boolean klik = false;

void setup() {
  size(800, 800);
  background(255, 255, 255);
  stroke(0, 0, 0);
}
void draw() {

  line(x1, y1, x2, y2);
}

void mousePressed() { //  wordt aangeroepen nadat een muisknop ingedrukt is.
  x1 = x2;
  y1 = y2;

  if (!klik) {
  klik = true;
  x1 = mouseX;
  y1 = mouseY;
  }
  
  if (klik) {
  x2 = mouseX;
  y2 = mouseY;
  }
}








/*
Maak een sketch die lijnen tekent. Linkermuisknop indrukken maakt een nieuwe lijn. Het beginpunt van de nieuwe lijn is het eindpunt van de oude lijn. Het eindpunt van de nieuwe lijn is waar de muis op het moment van klikken is.
 Hint
 Als je geen background instelt dan wordt het scherm nooit leeg gemaakt hierdoor
 kun je non stop door tekenen.
 
 Je hebt vier variabelen. Als er geklikt wordt dan schuif je de oude waardes door naar
 de laatste twee variabelen en daarna krijgen de eerste twee variabele de positie van
 de muis als waarde.
 */
