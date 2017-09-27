/* 
  Name:Flynn Lundeen
  Date:9/7/17
  Sketch Name:__________
  Description:___________________________________________
  ___________________________________________
  ___________________________________________
 */
 
 int amount;
// amount = 1;
 
raindrop [] droplet = new raindrop [1];

void setup() {
  size(700, 700);
      for (int i = 0; 1> i; i++) {
    droplet[i] = new raindrop(random(700), 1);
  }
}

void draw() {
    for (int  i = 0; 1 > i; i++) {
    droplet[i].update();
  }
  amount = amount +1;
}

class raindrop {
  float ypos;
  float offset;
  float fallSpeed;
  raindrop (float x, float y){
  fallSpeed = y;
  offset = x;
  }
  void update() {
    int randomD;
    randomD = int(random(-1,1));
    ellipse(random(0,700)+offset, ypos, 5,5);
    if (randomD == -1) {
    offset = offset - 0.25;
    }
    if (randomD == 1) {
    offset = offset + 0.25;
    }
    ypos = ypos +1;
    if (ypos < 700) {
     // ypos = 0;
    }
    }
  }