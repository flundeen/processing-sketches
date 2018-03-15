/*
Flynn, Lundeen
Exercise33_01
This code creates a pendulum that changes colors
*/

float x;
float y;
float ang = 10;
float Aacc = 0;
float Avel = 0;
float gravity = 0.01;
float hite = 320;
int r = 150;
int C;

void setup() {
  size(600,600);
  colorMode(HSB);
}

void draw() {
  C ++;
  if (C > 255) {
    C = 0;
  }
  translate(width,0);
  rotate(radians(90));
  
  fill ( 0,30);
  rect(0,0,width,height);
  Aacc = (-1 * gravity / r) * sin(degrees(ang));
  Avel += Aacc;
  ang += Avel; // controls the acceleration of the pendulum
  
  x = cos(degrees(ang)) * r; // sets the x-cordinates for the pendulum
  y = sin(degrees(ang)) * r; // sets the y-cordinates for the pendulum
  println(x, y, ang, Avel, Aacc);
  fill(C, 255,255);
  stroke(C,255,255);
  line(width/2, height/2, x + width/2, y + height/2);
  noStroke();
  ellipse(x+width/2, y + height/2, 20, 20);
}

//v = sqr((2(E - mgh))/2)