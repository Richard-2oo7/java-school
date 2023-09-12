size(500,500);
background(255,255,255);

int b = 250;
for(int i = 0; i < 5; i++){
  ellipse(250 + i*b/4, 250, b,b);
  b = b - 25;
}
//  ellipse(250 - b/2, 250 - b/2, b,b);
