int X;
int Y;

void setup() {
  X=0;
  Y=0;
  size(900,200);
}

void draw() {
  if (keyCode==UP) {
    X=0; 
  }
  if (mousePressed) {
    for (int i =1; i<5; i +=1 ) {
    Y+=5;
    }
  }
  if (Y>200) {
    Y=0;
  }
  while (X>900){
    X=0;
    background(50);
  }
    X+=1;
  rect(X,Y,100,100);
}