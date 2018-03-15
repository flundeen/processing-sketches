class Name {  //Name is what the class will be called
//Variables used in the class
float x = width/2;
float y = height/2;
float x2 = width/2;
float y2 = height/2;
float x3 = width/2;
float y3 = height/2;
float x4 = width/2;
float y4 = height/2;
float x5 = width/2;
float y5 = height/2;
float x6 = width/2;
float y6 = height/2;
float x7 = width/2;
float y7 = height/2;
float x8 = width/2;
float y8 = height/2;
float x9 = width/2;
float y9 = height/2;
float x10 = width/2;
float y10 = height/2;
float x11 = width/2;
float y11 = height/2;
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
  x11 = x10;
  y11 = y10;
  x10 = x9;
  y10 = y9;
  x9 = x8;
  y9 = y8;
  x8 = x7;
  y8 = y7;
  x7 = x6;
  y7 = y6;
  x6 = x5;
  y6 = y5;
  x5 = x4;
  y5 = y4;
  x4 = x3;
  y4 = y3;
  x3 = x2;
  y3 = y2;
  x2 = x;
  y2 = y;
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
  ellipse(x2,y2,r,r);
  ellipse(x3,y3,r,r);
  ellipse(x4,y4,r,r);
  ellipse(x5,y5,r,r);
  ellipse(x6,y6,r,r);
  ellipse(x7,y7,r,r);
  ellipse(x8,y8,r,r);
  ellipse(x9,y9,r,r);
  ellipse(x10,y10,r,r);
  ellipse(x11,y11,r,r);
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