
int sAturation_;

void setup() {
  size(255, 255);
  sAturation_ = 255;
  //This controls where the variable starts so that it doesn't start with a random value
}

void draw() {
  colorMode(HSB);
  background(mouseX, sAturation_, mouseY); 
  //This changes the color of the background to be equal to the value of "mouseX" amd "mouseY"
  if (mousePressed == true) {
    sAturation_ = sAturation_ - 1; 
    //When pressing the mouse the amount of saturation with the color is altered
  }
  
  if (sAturation_ == 0) {
    sAturation_ = 255;
  }
  //This resets the saturation amount
}