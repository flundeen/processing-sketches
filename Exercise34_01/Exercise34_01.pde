/*
Flynn Lundeen
Exercise 34 _01
This code created a class that creates a lot of worms who demonstrate Brownian motion
*/

int Obj_count =150; //How many Objects you want present
Name[] Brow = new Name[Obj_count];
//     /\
// Name of Class
// in your code
// when you call 
// upon a the
// class
void setup() {
  noStroke();
  colorMode(HSB);
  size(700,700);
  for (int i = 0; Obj_count > i; i++) {
    Brow[i] = new Name(0.1,5, random(255)); // Where you input the variable data for 
  } //              Turn speed, width, color
}
  
  
 void draw() {
   fill(0,12);
   rect(0,0,width,height);
   for (int i=0; Obj_count>i; i++) {
   Brow[i].function_1();      // How to call functions for a class
   }
   
   //Name[1].funciton_1();  This is how you call a specific funcitons
   
 }