void setup(){
size(800,800);
noStroke();
}

void draw(){
int r = floor(random(256));
int g = floor(random(256));;
int b = floor(random(256));;
fill(r,g,b);
rect(mouseX,mouseY,100,100);

}
