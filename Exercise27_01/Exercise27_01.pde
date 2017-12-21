
PImage bottom;
PImage sides;


void setup() {
  bottom = loadImage("Basketball_Court.png");
  sides = loadImage("audience.jpg");
  fullScreen(P3D);
  //size(800,800,P3D);
  //shapeMode(POINTS);
  rectMode(CENTER);
}

void draw() {
  if (mousePressed == true) {
  rotateY(radians(mouseX/2));
  rotateX(radians(mouseY/2));
  }
    background(0);
  pushMatrix();
  translate(width/2+630.5,100,-50);
  rotateY(radians(90));
  beginShape();
  texture(bottom);
  vertex(0, 500, 0, 0, 0);
  vertex(0, 500, -1261, 1261,0);
  vertex(715, 500, -1261,  1261,715);
  vertex(715, 500, 0, 0, 715);
  endShape();
  popMatrix();
  pushMatrix();
    translate(width/2+630.5,100,-50);
  rotateY(radians(90));
  beginShape();
  texture(sides);
  vertex(0,0,0,0,0);
  vertex(0,500,0,0,350);
  vertex(715,500,0,620,350);
  vertex(715,0,0,620,0);
  endShape();
  popMatrix();
  pushMatrix();
    translate(width/2+630.5,100,-50);
  rotateY(radians(90));
  beginShape();
  texture(sides);
  vertex(0,0,-1261,0,0);
  vertex(0,500,-1261,0,350);
  vertex(715,500,-1261,620,350);
  vertex(715,0,-1261,620,0);
  endShape();
  popMatrix();
  pushMatrix();
    translate(width/2+630.5,100,-50);
  rotateY(radians(90));
  beginShape();
  texture(sides);
  vertex(715,0,0,0,0);
  vertex(715,500,0,0,350);
  vertex(715,500,-1261,620,350);
  vertex(715,0,-1261,620,0);
  endShape();
  popMatrix();
  pushMatrix();
  translate(width/2-630.5+10,300,-357.5);
  box(15,150,300);
  popMatrix();
    pushMatrix();
  translate(width/2+630.5-10,300,-357.5);
  box(15,150,300);
  popMatrix();
    /*pushMatrix();
  translate(width/2+630.5-1261-5,500,-357.5);
  box(30,300,30);
  popMatrix();
  */
}