float X=50;
float Y=50;
float X2 = 500;
float Y2 = 500;
int alive = 1;
float speed2 = 1;
float speed = 5;
float size_ = 15;
void setup() {
  ellipseMode(RADIUS);
  fullScreen();
  noStroke();
}

void draw() {
  background(0);
  //warrior(X,Y,2,20,4);
    ellipse(X,Y,size_,size_);
  if (keyCode == UP) {
    Y -= speed;
  }
  if (keyCode == DOWN) {
    Y += speed;
  }
  if (keyCode == RIGHT) {
    X += speed;
  }
  if (keyCode == LEFT) {
    X -= speed;
  }
  if (alive == 1) {
  ellipse(X2,Y2,15,15);
  }
  if ((X2-X)>size_ && size_<X-X2 && Y2-Y>size_ && size_<X-X2) {
    alive = 0;
  }
}
/*void warrior(float x,float y,float speed,float health,float attack) {
  ellipse(X,Y,15,15);
  if (keyCode == UP) {
    Y += speed;
  }
  if (keyCode == DOWN) {
    Y -= speed;
  }
  if (keyCode == RIGHT) {
    X += speed;
  }
  if (keyCode == LEFT) {
    X -= speed;
  }
*/