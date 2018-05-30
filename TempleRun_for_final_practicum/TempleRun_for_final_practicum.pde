int RunnerLane = 0;
boolean rjum;
boolean Rlive = true;
boolean resett = false;
boolean dchek = false;
float runnerY;
int jcount = 0;
TempleRun TR;

void setup() {
  fullScreen(P3D);
  TR = new TempleRun(5000, this);
  TR.Set();
}


void draw() {
  lights();
  background(200);

  TR.run();
  //TR.printDisplay();

}



void keyPressed() {
  if (keyCode == RIGHT) {
      RunnerLane += 1;

    }
    
if (keyCode == LEFT) {
      RunnerLane -= 1;

    }
    
if (keyCode == UP) {
    
    if(Rlive == false) {
      if (dchek == true) {
      resett = true;
      dchek = false;
      }
    } else {
      if (jcount < 3) {
        jcount ++;
      rjum = true;
      } 
    }
}

  
}