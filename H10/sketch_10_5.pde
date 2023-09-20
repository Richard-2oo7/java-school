import controlP5.*;

float getal1;
float getal2;
String tekst1;
String tekst2;
Textfield TF1;
Textfield TF2;
float antwoord;

ControlP5 cp;

void setup() {
  size(500, 500);
  background(255, 255, 255);
  
  cp = new ControlP5(this);


 
  createButton("Knop1", 240, 230, "+");
  createButton("Knop2", 265, 230, "-");  
  createButton("Knop3", 290, 230, "/");  
  createButton("Knop4", 315, 230, "*"); 
  
  TF1 = cp.addTextfield("Textfield1")
            .setSize(100,50)
            .setPosition(20,230)
            .setCaptionLabel("TF1")
            .setFont(createFont("Arial", 20));
    
  TF2 = cp.addTextfield("Textfield2")
          .setSize(100,50)
          .setPosition(130,230)
          .setCaptionLabel("TF2")
          .setFont(createFont("Arial", 20)); 
}


void draw() {}



void createButton(String Knopnmr, int x, int y, String motvlinder) {
 cp.addButton(Knopnmr)
    .setPosition(x, y)
    .setSize(20, 40)
    .setCaptionLabel(motvlinder)
    .setFont(createFont("Arial", 20));
}
   
     
void Knop1(){
  tekst1 = TF1.getText();
  getal1 = float(tekst1);
  tekst2 = TF2.getText();
  getal2 = float(tekst2);
  
  antwoord = getal1 + getal2;
  println(antwoord);
}

void Knop2() {
  tekst1 = TF1.getText();
  getal1 = float(tekst1);
  tekst2 = TF2.getText();
  getal2 = float(tekst2);
  
  antwoord = getal1 - getal2;
  println(antwoord);
}

void Knop3() {
  tekst1 = TF1.getText();
  getal1 = float(tekst1);
  tekst2 = TF2.getText();
  getal2 = float(tekst2);
  
  antwoord = getal1 / getal2;
  println(antwoord);
}

void Knop4() {
  tekst1 = TF1.getText();
  getal1 = float(tekst1);
  tekst2 = TF2.getText();
  getal2 = float(tekst2);
  
  antwoord = getal1 * getal2;
  println(antwoord);
}
