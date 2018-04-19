


void setup() {
  size(500,500);
  noStroke();
}

void draw() {
  background(0);
  fill(255, 100, 0);
  ellipse(width/2,height/2, 200, 200);
  circ1(150);
  delay(1000);
  noLoop();
}



void circ1(int rad) {
  float a;
  float x;
  float y;
  float r = rad/2;
  float c;
  
  c = random(5, 30);
  for(int i = 0; i < c; i++) {
  a = random(0,360);
  x = cos(radians(a))*  (r + r/6);
  y = sin(radians(a)) * (r + r/6);
  fill(255, 255, 0);
  ellipse(x + width/2,y + height/2,r,r);
  
  float a2;
  float x2;
  float y2;
  float r2 = r/3;
  float c2;
  
  c2 = random(5, 30);
  for(int z = 0; z < c; z++) {
  a2 = random(0,360);
  x2 = cos(radians(a2))* (r2 + r2/6);
  y2 = sin(radians(a2)) * (r2 + r2/6);
  fill(0, 255, 0);
  ellipse(x + x2 + width/2,y + y2 + height/2, r2, r2);
  
  float a3;
  float x3;
  float y3;
  float r3 = r2/3;
  float c3;
  
  c3 = random(5, 30);
  for(int q = 0; q < c; q++) {
  a3 = random(0,360);
  x3 = cos(radians(a2))* (r3 + r3/6) ;
  y3 = sin(radians(a2)) * (r3 + r3/6);
  fill(255, 100, 0);
  ellipse(x + x2 + x3 + width/2,y + y2 + y3 + height/2, r3, r3);
  }
}

}

}