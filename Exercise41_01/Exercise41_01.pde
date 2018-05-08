
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

void setup() {
  colorMode(HSB);
  size(400,600);
  noStroke();
  rectMode(CENTER);
  cp5 = new ControlP5(this);
  
  // create a new button with name 'ON'
  cp5.addButton("ON")
     .setValue(1)
     .setPosition(0,0)
     .setSize(202,19)
     ;
  
  // and add another  button
  cp5.addButton("OFF")
     .setValue(0)
     .setPosition(0,20)
     .setSize(200,19)
     ;
     
     x = 300;
     y = 200;


}

void draw() {
  background(255);
  ellipse(x,y,15,15);
  
  ang += random(-1,1);
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
  if (on == 1) {
       fill(c % 255,255,255); // gives the sphere color
      
  } else {
    fill(0); //makes sphere black
  }
    
  c++;
  
}

public void controlEvent(ControlEvent theEvent) {
  println(theEvent.getController().getName());
  n = 0;
}

// function colorA will receive changes from 
// controller with name colorA
public void ON(int theValue) {
  println("Organism is visible : "+theValue);
  if (theValue == 1) {
    on = 1;
  }
}

public void OFF(int theValue) {
  println("Organism is not visible : "+theValue);
  if (theValue == 0) {
    on = 0;
  }
}