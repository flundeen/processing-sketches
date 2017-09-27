float F;
float C;

void setup() {
  size(600,600);
  F=10;
  C=10;
}

void draw() {
  fill(255,0,0);
  ellipse(100,100,C*0.55-32,C*0.55-32);
  fill(0,0,255);
  ellipse(500,500,F*1.8 + 32,F*1.8 + 32);
  C=mouseY;
  F=C;
  
}