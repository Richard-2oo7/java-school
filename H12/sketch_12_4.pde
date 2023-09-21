int startTijd = 0;
int sec = 0;
boolean start = false;

void setup() {
  size(500, 300);
  background(255);
  textSize(32);
  textAlign(CENTER, CENTER);
  fill(0, 0, 0);
}

void draw() {
  background(255);
  if (start) {
    sec = millis() - startTijd;
  }
  tijd(sec);
}

void keyReleased() {
  if (keyCode == 32) {
    if (start) {
      start = false;
    } else {
      start = true;
      startTijd = millis() - sec;
    }
  } else if (key == 'r' || key == 'R') {
    start = false;
    sec = 0;
  }
}

void tijd(int tijd) {
  int seconden = int(tijd / 1000);
  int milliSec = (tijd % 1000) / 10;
  String tijdStr = seconden + "s " + nf(milliSec, 2);
  text(tijdStr, width / 2, height / 2);
}
