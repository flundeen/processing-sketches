import processing.serial.*;
import cc.arduino.*;
Arduino arduino;
int potPin = 0;

void setup() {
  size(300,300);
  //println(Arduino.list());
  arduino = new Arduino(this, Arduino.list()[3], 57600);
  //arduino.pinMode(potPin, Arduino.OUTPUT);
  println(Arduino.list()[3]);
  
}

void draw() {
  float positionX = map(arduino.analogRead(potPin),0,1024,5,200);
  float positionY = map(arduino.analogRead(potPin),0,1024,5,200);
  fill((positionX * positionY) % 100, 100, 100);
  ellipse(positionX,positionY, positionX * -1, positionY * -1);
}
  