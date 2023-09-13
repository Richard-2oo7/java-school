size(500,500);
background(255,255,255);

int b = 10;
noFill();
for(int i = 0; i <50;i++){
  ellipse(250,250,b,b);
  println(b);
  b = b +10;
}
