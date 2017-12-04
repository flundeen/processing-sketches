/*
  L = 620 - 170/270 * H
  0...270 MAGENTA IS NOT A FACTOR
  
*/


int R1;
int R2;
int G;
int B;

void setup() {
  R1=100;
  B=100;
  G=R1;
  R2=(G+R1)/2;
}

void draw() {
  