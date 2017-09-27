class Drop {
  
  //the variables used in the classes
  float drop;
  float drop_y;
  float R_r;
  float R_c1;
  float R_c2;
  float R_c3;
  float drop_1;
  
   //The inputs that make the seperate classes unique
  Drop(float x,float C1,float C2, float C3) {
   
    //sets the values of all the variables
    
    drop=x;
    drop_1=x;
    drop_y=0;
    R_r=random(canvas_y);
    R_c1=C1;
    R_c2=C2;
    R_c3=C3;
    
  }
  
  
  void Rain_drop(){
    if(drop_y <= R_r) {
    fill(R_c1,R_c2,R_c3,100);
    stroke(R_c1,R_c2,R_c3,100);
    rect(drop,drop_y,3,3);
    drop_y = drop_y + 1;
  }else if(drop_y > R_r) { //What draws the Raindrops on the screen
    R_r=int(random(canvas_y));
    drop+=84;
    drop_y = 0;
  }
  //Tells the Raindrop to restart at a different X value when it's path is finished
  if(drop > canvas_x) {
    drop = drop_1;
  }
  }
}