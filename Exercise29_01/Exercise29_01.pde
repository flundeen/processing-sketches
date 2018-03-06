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
  float angle = map(arduino.analogRead(potPin),0,1024,0,360);
  line(width/2,height/2,(width/2) + (cos(angle) * 100), (height/2) + (sin(angle) * 100));
}
  