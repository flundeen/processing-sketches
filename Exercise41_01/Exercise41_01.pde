
import controlP5.*;

ControlP5 cp5;

int myColor = color(255);

int c1,c2;

float n,n1;

int on;
float x = 0;
float y = 0;
float ang = 0;
int c;
float Color_speed;

void setup() {
  colorMode(HSB);
  size(600,600);
  noStroke();
  
  cp5 = new ControlP5(this);

  
  
   cp5.addButton("Color")
     .setValue(1)
     .setPosition(0,0)
     .setSize(40,20)
     ;
  
  // and add another  button
  cp5.addButton("OFF")
     .setValue(0)
     .setPosition(81,0)
     .setSize(20,20)
     ;
     
   cp5.addButton("Light")
     .setValue(2)
     .setPosition(41,0)
     .setSize(40,20)
     ;

  
  // create a new button with name 'ON'
 
   cp5.addSlider("Color_speed")
     .setPosition(0,20)
     .setSize(100,20)
     .setRange(0,1)
     .setValue(0.5)

     ;
     
     x = 300;
     y = 300;


}

void draw() {
  //background(255);
  fill(0,10);
  rect(0,0,600,600);
  
  
  ang += random(-0.1,0.1);
  if (x > width) {
    ang += 180;
  }
  if (x < 0) {
    ang += 180;
  }
  if (y > height) {
    ang += 180;
  }
  if (y < 0) {
    ang += 180;
  }
  x = x + sin(ang) * 5;
  y = y + cos(ang) * 5;
  if (on == 0) {
       fill(c % 255,255,255); // gives the sphere color
      
  } 
  if (on == 1) {
    fill(255); //makes sphere black
  }
  if (on == 2) {
    fill (0);
  }
  ellipse(x,y,15,15);
  c+= Color_speed;
  
}

public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
  n = 0;
}

// function colorA will receive changes from 
// controller with name colorA
public void Color(int theValue) {
  println("Organism is visible : "+theValue);
  if (theValue == 1) {
    on = 0;
  }
}

public void OFF(int theValue) {
  println("Organism is not visible : "+theValue);
  if (theValue == 0) {
    on = 2;
  }
}

public void Light(int theValue) {
  println("Organism is visible : "+theValue);
  if (theValue == 2) {
    on = 1;
  }
}