PImage img;

void setup() {
  size(800,800);
  img = loadImage("Images/Bird.png");
}

void draw() {
  image(img, 0, 0, width, height);
}
