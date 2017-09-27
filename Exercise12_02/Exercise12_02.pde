
int a;
int b;
int c;

void setup() {
  size(400,400);
  a = 1;
  b = 1;
  c = a+b;
  println(a);
  println(b);
}

void draw() {
  a=b;
  b=c;
  c=a+b;
  println(b);
  fill(random(255),random(255),random(255));
  rect(a/255,b/255,c/255,c/255);
  rect(a/2+a/255,b/2+b/255,c/2+c/255,c/2+c/255);
  delay(500);
}