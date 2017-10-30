float A;
float B;
int C;
int X;
int Y;

void setup() {
  size(500,500);

  textSize(20);
  colorMode(HSB);
}

void draw() {
  textAlign(LEFT);
  textLeading(20);
  A = textWidth("yeah");
  B = textWidth("no");
  text("yeah", X, Y);
  ellipse(X,Y,A,5);
  text("no", X+30,Y+30);
  rect(X,Y,B,5);
  X = int(random(0,width));
  Y = int(random(0,height));
  fill(C,300,300);
  C = int(random(0,200));
}