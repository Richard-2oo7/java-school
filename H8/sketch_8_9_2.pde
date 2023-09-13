size(500,500);
background(255,255,255);
int b = 10;
for(int i = 0; i < 50; i++){
  ellipse(5+i*b/6, 250, b,b);
  b = b +2;
}
//  ellipse(250 - b/2, 250 - b/2, b,b);
