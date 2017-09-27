float growth=1;
float x=0;
float y=0;
float Limit;
float shade;
float move_x;
float move_y;

void setup() {
  size(900,900);
  colorMode(HSB);
  background(0);
  frameRate(800);
}

void draw() {
    move_x+=1;
    move_y+=1;
    Limit=1000;
    while (growth <= Limit) {
      fill(25,99,shade);
      stroke(25,99,shade);
      rect(x,y,growth,growth);
      x+=0.5;
      y+=1;
      growth+=35;
      shade+=3;
    }
    x=move_x;
    y=move_y;
    growth=1;
    shade=0;
      
}