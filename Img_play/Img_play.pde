PImage img1;
float A=3;

void setup() {
  img1 = loadImage("phat tiger.jpg");
  size(800,800);
}

void draw() {
  image(img1,0,0,800,800);
  filter(THRESHOLD,A);
  tint(0,255,0,255);
  A+=0.01;
  if (A>1) {
    A=0;
  }
}