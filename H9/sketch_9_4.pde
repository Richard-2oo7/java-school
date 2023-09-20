void setup(){
size( 500,500);
background(255,255,255);
stroke(0,0,0);
//rect(150,150,200,200);
}
void draw(){
  vierkant(150,150,200,200);
}

void vierkant(int x, int y, int w, int h){
     //top
  line(x,y,x + w,y);
    //left
  line(x,y + h,x,y);
    //right
  line(x +w ,y + h,x + w,y);
    //bottem
  line(x,y +h,x+ w,y+ h);
  

}
