int C;
PFont Jokerman;
void setup() {
  size(500,500);
  Jokerman = createFont("Jokerman",30);
  textFont(Jokerman);
}

void draw() {
  colorMode(HSB);
  fill(C,300,300);
  text("Hey Dr. Von Nagy",width/2-100,height/2);
  C++;
}