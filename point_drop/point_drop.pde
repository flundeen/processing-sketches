/* 
  Name:Flynn Lundeen
  Date:9/7/17
  Sketch Name:*Rainbow Drops*
  ___________________________________________
  ___________________________________________
  ___________________________________________
 */

int drop_1;
int drop_2;
int drop_3;
int drop_4;
int drop_5;
int drop_6;
int drop_7;
int drop_1_y;
int drop_2_y;
int drop_3_y;
int drop_4_y;
int drop_5_y;
int drop_6_y;
int drop_7_y;
int R_1;
int R_2;
int R_3;
int R_4;
int R_5;
int R_6;
int R_7;
int drop_1_2;
int drop_2_2;
int drop_3_2;
int drop_4_2;
int drop_5_2;
int drop_6_2;
int drop_7_2;
int drop_1_y_2;
int drop_2_y_2;
int drop_3_y_2;
int drop_4_y_2;
int drop_5_y_2;
int drop_6_y_2;
int drop_7_y_2;
int R_1_2;
int R_2_2;
int R_3_2;
int R_4_2;
int R_5_2;
int R_6_2;
int R_7_2;
int canvas_x;
int canvas_y;
int Wtile_x;
int Wtile_y;


void setup() {
  canvas_x=700;
  canvas_y=700;
  size(700,700);
  drop_1=0;
  drop_2=4;
  drop_3=8;
  drop_4=12;
  drop_5=16;
  drop_6=20;
  drop_7=24;
  drop_1_y=0;
  drop_2_y=0;
  drop_3_y=0;
  drop_4_y=0;
  drop_5_y=0;
  drop_6_y=0;
  drop_7_y=0;
  R_1=int(random(300));
  R_2=int(random(300));
  R_3=int(random(300));
  R_4=int(random(300));
  R_5=int(random(300));
  R_6=int(random(300));
  R_7=int(random(300));
  drop_1_2=28;
  drop_2_2=32;
  drop_3_2=36;
  drop_4_2=40;
  drop_5_2=44;
  drop_6_2=48;
  drop_7_2=52;
  drop_1_y_2=0;
  drop_2_y_2=0;
  drop_3_y_2=0;
  drop_4_y_2=0;
  drop_5_y_2=0;
  drop_6_y_2=0;
  drop_7_y_2=0;
  R_1_2=int(random(300));
  R_2_2=int(random(300));
  R_3_2=int(random(300));
  R_4_2=int(random(300));
  R_5_2=int(random(300));
  R_6_2=int(random(300));
  R_7_2=int(random(300));
  frameRate(10000);
  colorMode(RGB);
  colorMode(BLEND);
  background(0);
}

void draw() {
  if (mousePressed) {
    background(0);
    delay(100);
  }
  delay(mouseX/10);
  if(drop_1_y <= R_1) {
    fill(255,0,0.100);
    stroke(255,0,0,100);
    rect(drop_1,drop_1_y,3,3);

    drop_1_y = drop_1_y + 1;
  }
  if(drop_1_y > R_1) {
    R_1=int(random(canvas_y));
    drop_1+=56;
    drop_1_y = 0;
  }
  if(drop_1 > canvas_x) {
    drop_1 = 0;
  }
  if(drop_2_y <= R_2) {
    fill(255,166,0,100);
    stroke(255,166,0,100);
    rect(drop_2,drop_2_y,3,3);

    drop_2_y = drop_2_y + 1;
  }
  if(drop_2_y > R_2) {
    R_2=int(random(canvas_y));
    drop_2+=56;
    drop_2_y = 0;
  }
    if(drop_2 > canvas_x) {
    drop_2 = 4;
  }
  if(drop_3_y <= R_3) {
    fill(255,247,0,100);
    stroke(255,247,0,100);
    rect(drop_3,drop_3_y,3,3);

    drop_3_y = drop_3_y + 1;
  }
  if(drop_3_y > R_3) {
    R_3=int(random(canvas_y));
    drop_3+=56;
    drop_3_y = 0;
  }
    if(drop_3 > canvas_x) {
    drop_3 = 8;
  }
  if(drop_4_y <= R_4) {
    fill(0,255,0,100);
    stroke(0,255,0,100);
    rect(drop_4,drop_4_y,3,3);

    drop_4_y = drop_4_y + 1;
  }
  if(drop_4_y > R_4) {
    R_4=int(random(canvas_y));
    drop_4+=56;
    drop_4_y = 0;
  }
    if(drop_4 > canvas_x) {
    drop_4 = 12;
  }
    if(drop_5_y <= R_5) {
    fill(0,249,255,100);
    stroke(0,249,255,100);
    rect(drop_5,drop_5_y,3,3);

    drop_5_y = drop_5_y + 1;
  }
  if(drop_5_y > R_5) {
    R_5=int(random(canvas_y));
    drop_5+=56;
    drop_5_y = 0;
  }
    if(drop_5 > canvas_x) {
    drop_5 = 16;
  }
    if(drop_6_y <= R_6) {
    fill(0,0,255,100);
    stroke(0,0,255,100);
    rect(drop_6,drop_6_y,3,3);

    drop_6_y = drop_6_y + 1;
  }
  if(drop_6_y > R_6) {
    R_6=int(random(canvas_y));
    drop_6+=56;
    drop_6_y = 0;
  }
  if(drop_6 > canvas_x) {
    drop_6 = 20;
  }
    if(drop_7_y <= R_7) {
    fill(255,0,225,100);
    stroke(255,0,225,100);
    rect(drop_7,drop_7_y,3,3);

    drop_7_y = drop_7_y + 1;
  }
  if(drop_7_y > R_7) {
    R_7=int(random(canvas_y));
    drop_7+=56;
    drop_7_y = 0;
  }
  if(drop_7 > canvas_x) {
    drop_7 = 24;
  }
    if(drop_1_y_2 <= R_1_2) {
    fill(255,0,0.100);
    stroke(255,0,0,100);
    rect(drop_1_2,drop_1_y_2,3,3);

    drop_1_y_2 = drop_1_y_2 + 1;
  }
  if(drop_1_y_2 > R_1_2) {
    R_1_2=int(random(canvas_y));
    drop_1_2+=56;
    drop_1_y_2 = 0;
  }
  if(drop_1_2 > canvas_x) {
    drop_1_2 = 28;
  }
  if(drop_2_y_2 <= R_2_2) {
    fill(255,166,0,100);
    stroke(255,166,0,100);
    rect(drop_2_2,drop_2_y_2,3,3);

    drop_2_y_2 = drop_2_y_2 + 1;
  }
  if(drop_2_y_2 > R_2_2) {
    R_2_2=int(random(canvas_y));
    drop_2_2+=56;
    drop_2_y_2 = 0;
  }
    if(drop_2_2 > canvas_x) {
    drop_2_2 = 32;
  }
  if(drop_3_y_2 <= R_3_2) {
    fill(255,247,0,100);
    stroke(255,247,0,100);
    rect(drop_3_2,drop_3_y_2,3,3);

    drop_3_y_2 = drop_3_y_2 + 1;
  }
  if(drop_3_y_2 > R_3_2) {
    R_3_2=int(random(canvas_y));
    drop_3_2+=56;
    drop_3_y_2 = 0;
  }
    if(drop_3_2 > canvas_x) {
    drop_3_2 = 36;
  }
  if(drop_4_y_2 <= R_4_2) {
    fill(0,255,0,100);
    stroke(0,255,0,100);
    rect(drop_4_2,drop_4_y_2,3,3);

    drop_4_y_2 = drop_4_y_2 + 1;
  }
  if(drop_4_y_2 > R_4_2) {
    R_4_2=int(random(canvas_y));
    drop_4_2+=56;
    drop_4_y_2 = 0;
  }
    if(drop_4_2 > canvas_x) {
    drop_4_2 = 40;
  }
    if(drop_5_y_2 <= R_5_2) {
    fill(0,249,255,100);
    stroke(0,249,255,100);
    rect(drop_5_2,drop_5_y_2,3,3);

    drop_5_y_2 = drop_5_y_2 + 1;
  }
  if(drop_5_y_2 > R_5_2) {
    R_5_2=int(random(canvas_y));
    drop_5_2+=56;
    drop_5_y_2 = 0;
  }
    if(drop_5_2 > canvas_x) {
    drop_5_2 = 44;
  }
    if(drop_6_y_2 <= R_6_2) {
    fill(0,0,255,100);
    stroke(0,0,255,100);
    rect(drop_6_2,drop_6_y_2,3,3);

    drop_6_y_2 = drop_6_y_2 + 1;
  }
  if(drop_6_y_2 > R_6_2) {
    R_6_2=int(random(canvas_y));
    drop_6_2+=56;
    drop_6_y_2 = 0;
  }
  if(drop_6_2 > canvas_x) {
    drop_6_2 = 48;
  }
    if(drop_7_y_2 <= R_7_2) {
    fill(255,0,225,100);
    stroke(255,0,225,100);
    rect(drop_7_2,drop_7_y_2,3,3);

    drop_7_y_2 = drop_7_y_2 + 1;
  }
  if(drop_7_y_2 > R_7_2) {
    R_7_2=int(random(canvas_y));
    drop_7_2+=56;
    drop_7_y_2 = 0;
  }
  if(drop_7_2 > canvas_x) {
    drop_7_2 = 52;
  }
  fill(255,255,255,10);
  stroke(255,255,255,10);
  rect(Wtile_x,Wtile_y,50,50);
  Wtile_x=int(random(canvas_x));
  Wtile_y=int(random(canvas_y));
}