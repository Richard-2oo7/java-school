import controlP5.*;

float mijnGetal;
float btw;
String mijnString;

ControlP5 cp;

Button knop1;
Textfield TF1;

void setup(){
size(500,500);
background(255,255,255);
cp = new ControlP5(this);

cp.addButton("Knop1")
          .setSize(200,200)
          .setPosition(150,150)
          .setCaptionLabel("klik mij")
          .setColorForeground(color(150,150,150))
          .setColorBackground(color(140,140,140))
          .setColorActive(color(169,169,169))
          .setFont(createFont("Arial",40));

TF1 = cp.addTextfield("TF1")
          .setText("vul een prijs in")
          .setPosition(150,100)
          .setSize(200,50)
          .setAutoClear(false)
          .setCaptionLabel("")
          .setFont(createFont("Arial",20));
}

void draw(){
}

void Knop1(){
mijnString = TF1.getText();
mijnGetal = float(mijnString);
btw = mijnGetal/ 100 * 21;
mijnGetal += btw;
println(" De prijs met btw is "+ mijnGetal);
}
