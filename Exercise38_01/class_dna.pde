class Name {  //Name is what the class will be called
//Variables used in the class
float x = width/2;
float y = height/2;

float mx;
float my;
float ang;
float angdif;
float r;
float sugar;
float C;
  Name(float a, float b,float c) {
    sugar=a;
    r=b;
    C = c;
  }
  
  
  void function_1() {
    angdif = random(sugar * -1,sugar);
  ang += angdif;

  if (x + r>=width) {
    ang += 180;
  }
  if (y + r>=height) {
    ang += 180;
  }
  if (x - r<=0) {
    ang += 180;
  }
  if (y - r<= 0) {
    ang += 180;
  }
  mx = cos(ang) * (r-(r/3));
  my = sin(ang) * (r-(r/3));
  x = x+mx;
  y = y+my;

  fill(C,255,255);
  ellipse(x,y,r,r);

  C+= 1;
  if (C >= 255) {
    C =0;
  }
    //code wanted in function_1
  }
  
  void function_2() {
    //code wanted in function_2
  }
}