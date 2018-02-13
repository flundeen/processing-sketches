int Obj_count =250; //How many Objects you want present
Name[] Nam = new Name[Obj_count];
//     /\
// Name of Class
// in your code
// when you call 
// upon a the
// class
void setup() {
  for (int i = 0; Obj_count > i; i++) {
    Nam[i] = new Name(1,2,3); // Where you input the variable data for 
  }
}
  
  
 void draw() {
   for (int i=0; Obj_count>i; i++) {
   Nam[i].function_1();      // How to call functions for a class
   }
   
   //Name[1].funciton_1();  This is how you call a specific funcitons
   
 }