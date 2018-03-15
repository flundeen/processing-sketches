/* 
Flynn Lundeen
Exercise30_01
This code shows the variety created by randomSeed(). All you have to do is click.
*/

float y;
int x;
float y2;
int C;

void setup() { 
  size(600,600);
  
}

void draw() {
  noStroke();
  fill(0,12);
  rect(0,0,width,height);
  x = x + 1;
  if (mousePressed) {
    C += 1;
  }
  randomSeed(C);
  y = random(0, height);
  
  y2 = random(0, height);
  fill(255,0,0);
  ellipse(x, y, 20, 20);
  fill(0,0,255);
  ellipse(x,y2, 20, 20);
  if (x > width) {
    x = 0;
  }
}