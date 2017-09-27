/* 
  Name:Flynn Lundeen
  Date:9/7/17
  Sketch Name:*Rainbow Drops*
  Description: The purpose of this sketch is to simulate colorful raindrops. I also you almost transparent white rectangles
  to cloud up and slowly hide the path of the Raindrops. The Raindrops and made of 3x3 rectagles whose y value is increased
  to have them fall down the scree.There are always at most 14 raindrops on the screen at a time. Some interactive features
  with this code is that you can clear the screen while it is creating, and slow down the drawing, by moving the mouse to
  the right of the canvas. If you want to keep it drawing at its fastest pace though keep your cursor as far to the left of
  the screen as possible. I understand it is not the most efficient code, but it is the best I could do with my knowledge
  of processing.
 */

//This declares all the types of classes and variables

Drop rain1;
Drop rain2;
Drop rain3;
Drop rain4;
Drop rain5;
Drop rain6;
Drop rain7;
Drop rain8;
Drop rain9;
Drop rain10;
Drop rain11;
Drop rain12;
Drop rain13;
Drop rain14;
Drop rain15;
Drop rain16;
Drop rain17;
Drop rain18;
Drop rain19;
Drop rain20;
Drop rain21;
int canvas_x;
int canvas_y;
int Cloud_x;
int Cloud_y;


void setup() {
  
  //This is how I input the values and conditions of all my classes and variables
  
  rain1 = new Drop(0,255,0,0);
  rain2 = new Drop(4,255,150,0);
  rain3 = new Drop(8,250,255,0);
  rain4 = new Drop(12,0,255,0);
  rain5 = new Drop(16,0,255,250);
  rain6 = new Drop(20,0,0,255);
  rain7 = new Drop(24,255,0,255);
  rain8 = new Drop(28,255,0,0);
  rain9 = new Drop(32,255,150,0);
  rain10 = new Drop(36,255,255,0);
  rain11 = new Drop(40,0,255,0);
  rain12 = new Drop(44,0,255,250);
  rain13 = new Drop(48,0,0,255);
  rain14 = new Drop(52,255,0,255);
  rain15 = new Drop(56,255,0,0);
  rain16 = new Drop(60,255,150,0);
  rain17 = new Drop(64,255,255,0);
  rain18 = new Drop(68,0,255,0);
  rain19 = new Drop(72,0,255,250);
  rain20 = new Drop(76,0,0,255);
  rain21 = new Drop(80,255,0,255);
  canvas_x=1600;
  canvas_y=800;
  
  //makes the display fullscreeen
  
  fullScreen();
  frameRate(10000);
  colorMode(RGB);
  colorMode(BLEND);
  background(0);
}

void draw() {
  
  //allows the user to reset the canvas of the code
  
  if (mousePressed) {
    background(0);
    delay(100);
  }
  
  //controls how fast the design is created
  
  delay(mouseX/75);
  
  rain1.Rain_drop();
  rain2.Rain_drop();
  rain3.Rain_drop();
  rain4.Rain_drop();
  rain5.Rain_drop();
  rain6.Rain_drop();
  rain7.Rain_drop();
  rain8.Rain_drop();
  rain9.Rain_drop();
  rain10.Rain_drop();
  rain11.Rain_drop();
  rain12.Rain_drop();
  rain13.Rain_drop();
  rain14.Rain_drop();
  rain15.Rain_drop();
  rain16.Rain_drop();
  rain17.Rain_drop();
  rain18.Rain_drop();
  rain19.Rain_drop();
  rain20.Rain_drop();
  rain21.Rain_drop();
  
  //sets what the Clouds look like

  fill(255,255,255,10);
  stroke(255,255,255,10);
  rect(Cloud_x,Cloud_y,75,75);
  Cloud_x=int(random(-5,canvas_x));
  Cloud_y=int(random(-5,canvas_y));
  
  //How the Clouds are randomly paced throughout the canvas
  
  fill(random(255),random(255),random(255),50);
  stroke(random(255),random(255),random(255),10);
  rect(random(canvas_x,2000),random(2000),50,50);
    rect(random(2000),random(canvas_y,2000),50,50); 
  //Fills the unused space on the canvas
  
}