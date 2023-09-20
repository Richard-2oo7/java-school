import controlP5.*;

ControlP5 cp;

Textfield TF1;
Button knop1;


void setup(){
  size(500,500);

cp = new ControlP5(this);

TF1 = cp.addTextfield("TextField1")
        .setText("typ hier je naam")
        .setSize(200,50)
        .setPosition(200,50)
        .setCaptionLabel("")
        .setAutoClear(false);
knop1 = cp.addButton("Knop1")
        .setCaptionLabel("Welkom");
}

void draw(){
}

void Knop1(){
println("Hoi " + TF1.getText());
}
