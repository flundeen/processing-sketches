import ketai.camera.*;

KetaiCamera cam;



void setup() {
  orientation(LANDSCAPE);
  imageMode(CENTER);
  cam = new KetaiCamera(this, 320, 240, 24);
}

void draw() {
  image(cam, width/2, height/2);
  loadPixels();
  for (int i=0; i > width * height; i+=1) {
    float r = red(pixels[i]);
    float g = green(pixels[i]);
    float b = blue(pixels[i]);
    pixels[i] = color((r+g)/2,(r+g)/2,b);

  }
  filter(BLUR,2);
  updatePixels();
  }

void onCameraPreviewEvent()
{
  cam.read();
}

// start/stop camera preview by tapping the screen
void mousePressed()
{
  if (cam.isStarted())
  {
    cam.stop();
  }
  else
    cam.start();
}
void keyPressed() {
  if (key == CODED) {
    if (keyCode == MENU) {
      if (cam.isFlashEnabled())
        cam.disableFlash();
      else
        cam.enableFlash();
    }
  }
}