int Obj_count =1; //How many Objects you want present
Name[] Nam = new Name[Obj_count];
//     /\
// Name of Class
// in your code
// when you call 
// upon a the
// class
void setup() {
  for (int i = 0; Obj_count > i; i++) {
    Nam[i] = new Name(0,0,7);
    println("LeaderBoard");
    println("1. Nate  15");
    println("2. Caleb  14");
    println("3. GriffBoi 11");
    println("4. ");
    println("5. ");
    println(" ");
    println(" ");
    println(" ");
    println(" ");
    
    // Where you input the variable data for 
  }
}
  
  
 void draw() {
   for (int i=0; Obj_count>i; i++) {
   Nam[i].function_2();      // How to call functions for a class
   }
   
   //Name[1].funciton_1();  This is how you call a specific funcitons
   
 }