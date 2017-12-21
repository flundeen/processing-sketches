/*
* Flynn Lundeen
*
*Exercise 25.1
*
*
*
*/

int Z=50;
int X=width/2;
int Y= height/2;
int R1 = 5;
int R2 = 5;
int R3 = 5;

void setup() {
  background(0);
  size(600,600,P3D);
  noStroke();
}

void draw() {
  lights();
  //pushMatrix();
  pointLight(600,600,400,0,0,-400);
  translate(width/2,height/2,height * -1);
  background(0);
  rotateX(radians(frameCount));
  rotateY(radians(frameCount));
  rotateZ(radians(frameCount/2));
  fill(0,255,0);
  box(X,Y,Z);
  X=mouseX;
  Y=mouseY;
  if(keyCode== UP) {
    Z++;
  }
  if(keyCode== DOWN) {
    Z--;
  }
  
  //popMatrix();

}