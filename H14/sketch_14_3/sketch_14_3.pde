import processing.sound.*;

SoundFile file;

void setup() {
  size(800, 800);
  file = new SoundFile(this, "music/muziekje.mp3");
  file.play();
}
void draw() {
}
