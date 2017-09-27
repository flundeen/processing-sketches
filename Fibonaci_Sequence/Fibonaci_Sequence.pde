
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
  delay(500);
}