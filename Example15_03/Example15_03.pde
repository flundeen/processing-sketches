int M;
int X;

void setup() {
  M=1;
  X=0;
  size (500,500);
}

void draw() {
  rect(X,0,10,height);
  if (keyPressed) {
    X+=1;
  }else{
    stroke(random(255),random(255),random(255));
  }

  textSize(40);
  fill(random(255),random(255),random(255));
  text("Exercise15_03",width/2,height/2);

}