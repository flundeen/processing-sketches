int layout;
float ring_1;
PFont zigBlack;

void setup() {
  size(700,700);
  layout=500;
  ring_1=175;

}

void draw() {
  while (layout > 10){
    layout -= 1;
    ellipse(350,350,layout,layout);
    noFill();
  }
  while (ring_1 > 10) {
    ring_1 -= 0.1;
    stroke(255,183,0);
    noFill();
    ellipse(350,350,ring_1,ring_1);
  }

}