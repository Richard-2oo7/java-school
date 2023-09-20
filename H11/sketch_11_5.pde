String naam = "Jan";
boolean zoeker = false;
String namen[] = {"Piet","Jan","Klaas","Kees","Leo"};

void setup(){
  for(int i =0; i<namen.length; i++){
    if(namen[i] == naam){
     zoeker = true;
    }
  }
  if(zoeker == true){
  println("Jan zit in de Array");
}

}
void draw(){

}
