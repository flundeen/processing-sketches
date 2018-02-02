float S = 0;
float M = 0;
float H = 0;
float ES = 0;
int RES = 0;
float RCS = 0;
float CS = 0;
float RCM = 0;
float RCH = 0;
float RS = 0;
float RM = 0;
float RH = 0;
String N ;
void setup() {
  size(displayWidth,displayHeight);
  N = "Lundeen and Partners";
}
void draw() {
  S =second() * 6;
  M = minute() * 6;
  H = hour() * 30;
  ES = S + (M * 60) + (H * 3600);
  RES = floor(ES * 1.157);
  RCS = RES % 100;
  RCM = (RES % 10000 - RCS)/100;
  RCH = (RES % 100000 - (RCS + (RCM * 100)))/10000;
  print(RES, " ");
  print(RCH, " ");
  print(RCM, " ");
  println(RCS, " ");
  print(RS, " ");
  print(RM, " ");
  print(RH, " ");
  RS = radians(RCS * 3.6);
  RM = radians(RCM * 3.6);
  RH = radians(RCH * 72);
  
  
  background(255);
  fill(0);
  text(N, width/2, height/2+50);
  fill(255);
  pushMatrix();
  translate(width/4,height/2);
  rotate(radians(-90));
  ellipse(0,0,150,150);
  stroke(255,0,0);
  line(0,0,50 * cos(radians(S )), 50 * sin(radians(S )));
  // println(S);
  stroke(0);
  line(0,0,60 * cos(radians(M)),60 * sin(radians(M)));
  // println(M);
  line(0,0, 35 * cos(radians(H)), 35 * sin(radians(H)));
  // println(H);
  popMatrix();
  pushMatrix();
  
  translate((width/4) * 3,height/2);
  ellipse(0,0,150,150);
  stroke(255,0,0);
  line(0,0, 50 * cos(radians(RES)), 50 * sin(radians(RES)));
  //println(RS);
  stroke(0);
  line(0,0, 60 * cos(radians(RCM)), 60 * sin(radians(RCM)));
  //println(RM);
  line(0,0, 35 * cos(radians(RCH)), 35 * sin(radians(RCH)));
  //println(RH);

  popMatrix();
  
}

/*
  RS - Revolutionary Second
  TS - Total seconds
  1.157 RS = 1 S
  Int TS = s + (m * 60) + (h * 3600)
  Int RS = integer( TS * 1.157)
  Int RH = modulus ( TRS/1000)
  Int RM = modulus ( TRS - (RH * 10000)) (100);
  Int RS = TRS - (RH * 10000) - (RM * 100)

*/