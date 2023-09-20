import controlP5.*;
ControlP5 cp;

int positie = 0;
String naam;
Textfield TF1;
Button knop1;

String[] NamenLijst = new String[10];

void setup(){
  size(500,500);
  background(0,0,0);
  
  cp = new ControlP5(this);
  
  
  
  
  TF1 = cp.addTextfield("Textfield1")
          .setPosition(20,20)
          .setSize(200,70)
          .setCaptionLabel("")
          .setFont(createFont("Arial",30));
          
  knop1 = cp.addButton("Knop1")
            .setPosition(20,110)      
            .setSize(200,200)
            .setCaptionLabel("klik")
            .setFont(createFont("Arial",40));
            

}

void draw(){
  background(0);
  fill(255,255,255);
  textSize(20);
  text(positie,250,0);
  if(positie == 10){
    for(int i = 0; i < positie; i++){
      text(NamenLijst[i],280,50 + i * 30);
    }
  }
}

void Knop1(){
  if(positie < NamenLijst.length){
  naam = TF1.getText();
  NamenLijst[positie] = naam;
  positie++;
  }
}
