int waarde = 3;
int x = 0;
int[] getallen = {3,50,4,9,3,2,7,23,3,7};

void setup(){
  for(int i=0; i<getallen.length; i++){
  if(getallen[i] == waarde){
  x++;
  }

 }
println("De waarde " + waarde + " komt " + x + " keer voor");
  
}

void draw(){

}
