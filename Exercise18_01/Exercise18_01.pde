int C;
void setup() {
  size(500,500);
}

void draw() {
  colorMode(HSB);
  fill(C,300,300);
  textSize(30);
  text("Hey Dr. Von Nagy",width/2-100,height/2);
  C++;
}