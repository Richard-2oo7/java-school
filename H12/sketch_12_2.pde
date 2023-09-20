int Spaties = 0;
int seconden;
int tijdOver;
boolean tijd = true;



void setup(){
  fill(0,0,0);
  size(500,500);
  textSize(100);
  background(255,255,255);
}


void draw(){
  seconden = millis()/1000;
  tijdOver = 10 - seconden;
  if(seconden >= 10){
    tijd = false;
    tijdOver = 0;
    
  }
  background(255,255,255);
  text("Spaties: " + Spaties,20,250);
  
  text("Tijd: " + tijdOver,100,120);
  }

void keyReleased(){
  if(keyCode == 32 && tijd){
  Spaties++;
}
}
