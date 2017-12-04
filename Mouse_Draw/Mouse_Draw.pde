int size =250;
Scavenger[] Name = new Scavenger[size];


void setup() {
  colorMode(HSB);
  for (int i = 0; size > i; i++) {
    Name[i] = new Scavenger(int(random(0,10)),10,1);
  }
  fullScreen();
  
  background(0);
}

void draw() {
  
  for (int i=0;size>i;i++) {
    Name[i].finder();
  }
 
}
 
 
 class Scavenger {
  int path;
  int X;
  int Y;
  int D;
  int S;
  int C;
  int limit;
  int shape;
  int speed;
  
  Scavenger(int edge, int size,int shap) {
    X=int(random(0,width));
    Y=int(random(0,height));
    D=1;
    S=size;
    C=0;
    path=0;
    limit=edge;
    shape=shap;
    speed=3;
  }
  
  
  void finder() {
    C+=1;
    if (C>255) {
      C=0;
    }
    colorMode(HSB);
    fill(C,255,255);
    stroke(C,255,255);
    
    if (shape==1) {
    rect(X-S/2,Y-S/2,S,S);
    }
    if (shape==2) {
      ellipse(X-S/2,Y-S/2,S,S);
    }
    path+=1;
    if (X > mouseX) {
      X--;  
    }
    if (X < mouseX) {
      X++;
    }
    if (Y > mouseY) {
      Y--;  
    }
    if (Y < mouseY) {
      Y++;
    }

    path+=limit;
  }
}