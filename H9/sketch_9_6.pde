void setup(){
  size(500,500);
}

void draw(){
  background(255,255,255);
  cirkel(250,250,100,5);
  }
  
  void cirkel(int x, int y,int sizeC,int aantal){
    for(int i = 0; i<aantal; i++){
      ellipse(200 + sizeC/2,200,sizeC,sizeC);
      sizeC -= 20;
  }
  
  
  
}
