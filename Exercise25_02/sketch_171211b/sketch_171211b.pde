void setup() {
  fullScreen(P3D);
}

void draw() {
  background(0);
  translate(width/2,height/2);
    rotateZ(radians(frameCount));
  rotateY(radians(frameCount/2));
  box(300,10,10);
  box(10,300,10);
  box(10,10,300);
  sphere(50);
 // rotateX(radians(frameCount));

}