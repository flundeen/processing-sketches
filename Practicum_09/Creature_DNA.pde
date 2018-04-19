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
  
  //degrees(atan2(y-y2,x-x2))+180
  void function_1() {
  if (mousePressed) {
    fx = mouseX;
    fy = mouseY;
  }
  ellipse(fx,fy,5,5);
  if (dist(x,y,fx,fy) < 150 ){
    ang = atan2(fy-y,fx-x);
  } else {
  angdif = random(sugar * -1,sugar);
  ang += angdif;
  }
  
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
  //my = sin(ang) * (r-(r/3));
  //mx = cos(ang) * (r-(r/3));
  my = sin(ang) * (r-(r/3));
  mx = cos(ang) * (r-(r/3));
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
    if (dist(x,y,fx,fy) < 5) {
      fx = int(random(0 + 10, width - 10));
      fy = int(random(0 + 10, height - 10));
    }
    //code wanted in function_2
  }
}