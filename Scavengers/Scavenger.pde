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
    fill(0,75);
    stroke(255,30);
    C+=1;
    if (C>255) {
      C=0;
    }
    if (shape==1) {
    rect(X-S/2,Y-S/2,S,S);
    }
    if (shape==2) {
      ellipse(X-S/2,Y-S/2,S,S);
    }
    path+=1;
    if (X > width) {
      D=1;  
    }
    if (X < 0) {
      D=2;
    }
    if (Y > height) {
      D=3;  
    }
    if (Y < 0) {
      D=4;
    }
    if (path >= 750) {
      D=int(random(0,5));
      path=0;
    }
    if (D==1) {
      X-=speed;
    }
    if(D==2) {
      X+=speed;
    }
    if (D==3) {
      Y-=speed;
    }
    if (D==4) {
      Y+=speed;
    }
    path+=limit;
  }
}