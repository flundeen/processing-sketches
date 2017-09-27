int y;

void setup(){
  size(700, 900);
  frameRate(5000);
      blendMode(BLEND);
    colorMode(HSB);
    noStroke();
}

void draw(){
  colorDrip(50, 359,y+10);
  colorDrip(150, 20,y+8);
  colorDrip(250, 40,y+6);
  colorDrip(350, 60,y+2);
  colorDrip(450, 120,y+9);
  colorDrip(550, 180,y+4);
  colorDrip(650, 240,y+7);

}

void colorDrip(int x, int q, int y) {
    delay(int(random(200)));
    fill(q, 200, 200);
    ellipse(x,y,100,100);
    println(y);
     y = y+1; 
}

void colorDrip_1(int x, int q) {
  int y;
  y = 0;
  for (int i = 0; 900 > i; i++) {
    blendMode(BLEND);
    colorMode(HSB);
    noStroke();
    fill(q , 200,190);
    ellipse(x+25,y-20,20,20);
    y = y+1;
    println(y);
  }
}