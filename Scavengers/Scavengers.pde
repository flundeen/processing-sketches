
int size =250;
Scavenger[] Name = new Scavenger[size];


void setup() {
  for (int i = 0; size > i; i++) {
    Name[i] = new Scavenger(int(random(0,10)),10,1);
  }
  fullScreen();
  colorMode(HSB);
  background(0);
}

void draw() {
  for (int i=0;size>i;i++) {
    Name[i].finder();
  }
 
}