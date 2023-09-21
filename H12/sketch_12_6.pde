int x = 375;
int y = 375;

void setup() {
  size(800, 800);
  background(255, 255);
}
void draw() {
  background(255, 255, 255);
  rect(x, y, 100, 100);
}
void keyPressed() {
  if (keyCode == 37) {
    x-=10;
  }
  if (keyCode == 38) {
    y-=10;
  }
  if (keyCode == 39) {
    x+=10;
  }
  if (keyCode == 40) {
    y+=10;
  }
}
