import controlP5.*;

ControlP5 cp;

Button knop1;
Button knop2;

void setup(){
  size(500,500);
  
cp = new ControlP5(this);

knop1 = cp.addButton("Knop1")
          .setSize(100,50)
          .setPosition(20,30)
          .setCaptionLabel("klik mij");
knop2 = cp.addButton("Knop2")
          .setSize(100,50)
          .setPosition(140,30)
          .setCaptionLabel("klik mij");


}
void draw(){
}

void Knop1(){
println("Goed");
}

void Knop2(){
  println("fout");

}
