PImage img1;
PImage img2;
PImage img3;

void setup() {
  size(800,800);
  img1 =loadImage("fish 1.jpg");
  img2 =loadImage("phat tiger.jpg");
  img3 =loadImage("Trump 1.jpg");
  image(img3,0,0,800,800);
  image(img1,500,100);
  image(img2,0,600);
}

void draw() {
}