PImage img;


void setup() {
  background(153, 217, 234);
  size(600, 600);
  img = loadImage("Images/Bird.png");
}

void draw() {
  image(img, 20, 30, 230, 200);
  image(img, 300, 30, 230, 200);
  image(img, 30, 300, 230, 200);
}
