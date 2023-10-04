import processing.sound.*;
SoundFile point;
SoundFile achtergondMuziekje;
SoundFile oof;
SoundFile flap;

PImage Bird1;
PImage Bird2;
PImage Bird3;

boolean start = false;

int yBird = 400; // start hoogte vogel
float snelheid = 20;
float zwaartekracht = 0.7;
int Birdframe = 1;

int tijdNewBirdFrame = 100; // in ms
int lastFrameChange = 0;

int ruimteTussenBuis = 500;
int assen = 200;
int breedteBuis = 200;
int hoogteGat = 300;
boolean nieuwOpstakel = true;
boolean[] omlaag = {true, true, true};

boolean dood = false;
boolean playsound = false;
int score = 0;
int best;

int[] afstand = {1920, 2700, 3400};
int[] hoogte = new int[3];
boolean[] hoogteIngestelt = {false, false, false};
boolean restart = false;

void setup() {
  fullScreen();
  background(153, 217, 234);

  afbeeldingen();
  geluiden();
  achtergondMuziekje.play();
  score();
}

void draw() {
  background(153, 217, 234);
  score();

  if (millis() - lastFrameChange >= tijdNewBirdFrame) {
    Birdframe = (Birdframe % 3) + 1;
    lastFrameChange = millis();
  }
  switch (Birdframe) {
  case 1:
    image(Bird1, 200, yBird, 100, 80);
    break;
  case 2:
    image(Bird2, 200, yBird, 100, 80);
    break;
  case 3:
    image(Bird3, 200, yBird, 100, 80);
    break;
  }

  if (start) {
    yBird += snelheid;
    snelheid += zwaartekracht;


    for (int i = 0; i< afstand.length; i++) {
      afstand[i] -= 5;

      if (!hoogteIngestelt[i]) {
        hoogte[i] = round(random(0, 1080 - hoogteGat));
        hoogteIngestelt[i] = true;
      }

      Draw_Obstacle(i);
      dood(i);
      restartF(i);
      beweging(i);

      if (!restart) {
        score();
      }
    }
  }
}

void Draw_Obstacle(int i) {
  noStroke();
  noFill();
  rect(afstand[i], hoogte[i], breedteBuis, hoogteGat);
  fill(181, 230, 29);
  strokeWeight(8);
  stroke(0, 0, 0);
  rect(afstand[i], hoogte[i] + hoogteGat, breedteBuis, height);
  rect(afstand[i], hoogte[i], breedteBuis, -2000);

  if (afstand[i] <= 0 - breedteBuis) {
    afstand[i] = 1920;
    hoogteIngestelt[i] = false;
  }


  if (afstand[i] == 200 && !dood) {
    score++;
    best++;
    point.play();
    if (best >score) {
      best--;
    }
  }
}

void dood(int i) {

  if (afstand[i] <= 300 && afstand[i] >= 200 - breedteBuis && yBird >= hoogte[i] && yBird <= (hoogte[i] + hoogteGat - 80)) {
  } else if ((afstand[i] <= 300 && afstand[i] >= 200 - breedteBuis)|| yBird >= 1080) {
    dood = true;
    if (playsound) {
      oof.play();
      playsound = false;
    }
  }

  if (dood) {
    rect(700, 300, 500, 300, 20);
    fill(0);
    textSize(100);
    text("score: " + score, 750, 400);
    text("best: " + best, 750, 550);
    afstand[i] += 5;
  }
}
void score() {
  strokeWeight(5);
  fill(255, 255, 255);
  rect(1675, 0, 300, 70);
  fill(0, 0, 0);
  textSize(50);
  text("score: " + score, 1700, 50);
}

void beweging(int i) {
  if (score >= 5) {
    if (omlaag[i]) {
      hoogte[i]+= 2;
    }
    if (!omlaag[i]) {
      hoogte[i]-= 2;
    }
    if (hoogte[i] >= 1080 - hoogteGat) {
      omlaag[i] = false;
    }
    if (hoogte[i] <= 0) {
      omlaag[i] = true;
    }
  }
}


void geluiden() {
  achtergondMuziekje = new SoundFile(this, "sounds/achtergrondmuziekje.mp3");
  oof = new SoundFile(this, "sounds/oof.mp3");
  flap = new SoundFile(this, "sounds/flap.mp3");
  point = new SoundFile(this, "sounds/point.mp3");

  achtergondMuziekje.amp(0.1);
  achtergondMuziekje.loop();
}

void afbeeldingen() {
  Bird1 = loadImage("Images/Bird1.png");
  Bird2 = loadImage("Images/Bird2.png");
  Bird3 = loadImage("Images/Bird3.png");
}

void keyPressed() {
  if (keyCode == 32 && !dood) {
    start = true;
    snelheid = -13;
    flap.play();
  }
  if (dood && keyCode == 32) {
    restart = true;
  }
}

void restartF(int i) {
  if (restart) {
    dood = false;
    start = false;
    afstand[0] = 1920;
    afstand[1] = 2700;
    afstand[2] = 3400;
    yBird = 400;
    score = 0;
    restart = false;

    hoogteIngestelt[i] = false;
    if (!hoogteIngestelt[i]) {
      hoogte[i] = round(random(0, 1080 - assen));
      hoogteIngestelt[i] = true;
    }
  }
}
