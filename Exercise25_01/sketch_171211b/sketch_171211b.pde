void setup() {
  fullScreen(P3D);
}

void draw() {
  lights();
  pointLight(mouseX * 2,mouseX * 2,mouseY * 2,10,10,10);
  shininess(10);
  background(0); 
  //Comment out here
  translate(width/2,height/2,mouseY * -2);
  rotateX(radians(frameCount));
    rotateZ(radians(frameCount * 10));
  rotateY(radians(frameCount * 2));
  //To here if you want just zoom
  fill(random(255),random(255),random(255));
  box(300,10,10);
  box(10,300,10);
  box(10,10,300);
  sphere(50);
    pushMatrix();
  translate(200,200,700);
  sphere(200);
  popMatrix();
    pushMatrix();
  translate(-300,150,900);
  sphere(250);
  popMatrix();
    pushMatrix();
  translate(800,-700,-450);
  sphere(500);
  popMatrix();
    pushMatrix();
  translate(height/-2,200,-650);
  sphere(100);
  popMatrix();
    pushMatrix();
  translate(-500,-500,-500);
  sphere(100);
  popMatrix();
    pushMatrix();
  translate(-500,-500,-500);
  fill(random(255),random(255),random(255),50);
  sphere(375);
  popMatrix();
    popMatrix();
 //Comment out here
 /*camera(mouseX * 2,height/2, mouseY * 2, height/2, height/2, height/2, 
       0.0, 1.0, 0.0);
       translate(widht/2,height/2,300);
 */
 //to here if you want to use the camera
}