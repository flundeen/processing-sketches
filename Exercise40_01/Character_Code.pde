class Snake {
  ArrayList<float[]> trail = new ArrayList();
  float C = 0;
  color invis;

  Snake  () {
    
    super();
    for (int i = 0; 50 > i; i++) {
      float[] a = {0,0};
      trail.add(a);
      
    }
  }
  
  void trail(float x,float y) {
    
   for (int i = 0; trail.size() > i; i++) {
      
      if ( dist(288,288,x,y) <= 50) {
      colorMode(HSB);
      fill(C,255,255);
      stroke(C,255,255);
      C = C + 5;
      C %= 255;
      } else { 
        invis= get(round(trail.get(i)[0]),round(trail.get(i)[1]));
      fill(invis);
      stroke(invis);
        
      }
      ellipse(trail.get(i)[0],trail.get(i)[1],10,10);
      
    }
    float[] curpos = {x,y};
    trail.add(curpos);
    trail.remove(0);
  }
  
}
  


class You  extends Snake{
  Snake snake;// = new Snake();
  float Xpre ;
  float Ypre;
  float angdif = 180;
  float tarX = 288;
  float tarY = 288;
  float ang = 0;
  int P =2;
  

  float dirX;
  float dirY;
  int count = 0;
  
  character YOU;
  You () {
    YOU = new character(200,200,10);
    ang = atan2(YOU.x-250,YOU.y-250);
    snake = new Snake();
    
    
  }
  void run(map MAP) {//Avalible functions, part allowed to change
   this.calc();
    ArrayList<float[]> info = MAP.infoSight(YOU).get(0);
    ArrayList<float[]> info2 = MAP.infoSight(YOU).get(1);
    
   snake.trail(YOU.x,YOU.y);
     
    for (int i = 0;(info.size()) > i; i++) { //repeat for each item
   ////main loop
     
   
         // println(P,tarX, tarY, ang);
         println(YOU.x,Xpre,YOU.y,Ypre);
          stroke(0,255,0);
          line(YOU.x,YOU.y,tarX,tarY);
          dirX = sin(ang) * 10;
          dirY = cos(ang) * 10;
          stroke(255,0,0);

     
     if(P==1) {
       if (dist(YOU.x,YOU.y,tarX,tarY) < dist(YOU.x,YOU.y,info.get(i)[0],info.get(i)[1])) {
       tarX = info.get(i)[0];
       tarY = info.get(i)[1];
          
     if (YOU.hit(MAP,YOU.x + sin(ang),YOU.y + cos(ang))) {
      //if hitting against wall
      for ( int m = 0; 360 > m; m += 1) {
        float dir = radians(m);
        float mx = YOU.x + sin(dir);
        float my = YOU.y + cos(dir);
        if(YOU.hit(MAP,mx,my)) {
          ang = dir + radians(1);
        }
      }
    
    }
     
       }
     if (frameCount % 100 == 0) {
       ang = atan2(YOU.x-tarX,YOU.y-tarY) + radians(180);
     }
       if(dist(YOU.x,YOU.y,288,288) >= 100) {
         P++;
         angdif = ang + 180;
       }
     }
     if(P==2) {
       tarX = 288;
       tarY = 288;
        ang = atan2(YOU.x-tarX,YOU.y-tarY) + (radians(180)+180) /2;
       if(dist(tarX,tarY,YOU.x,YOU.y) < 5) {
      P = 1;
    }
    
    
    
    if ( count >= 5) {
       ang += 180;
       count = 0;
    }

       
     if (YOU.hit(MAP,YOU.x + sin(ang),YOU.y + cos(ang))) {
      //if hitting against wall
      for ( int m = 0; 360 > m; m += 1) {
        float dir = radians(m);
        float mx = YOU.x + sin(dir);
        float my = YOU.y + cos(dir);
        if(YOU.hit(MAP,mx,my)) {
          ang = dir + radians(1);
        }
      }
    
    }
     
     }
       
     if (YOU.hit(MAP,YOU.x + sin(ang),YOU.y + cos(ang))) {
      //if hitting against wall
      for ( int m = 0; 360 > m; m += 1) {
        float dir = radians(m);
        float mx = YOU.x + sin(dir);
        float my = YOU.y + cos(dir);
        if(YOU.hit(MAP,mx,my)) {
          ang = dir + radians(1);
        }
      }
    
    }
    if ( dist (YOU.x,YOU.y,info2.get(0)[0],info2.get(0)[1] ) < 25) {
            MAP.infoSight(YOU).get(1).get(i)[1] = 0;
            MAP.infoSight(YOU).get(1).get(i)[0] = 0;
            
    }
     if (YOU.hit(MAP,YOU.x + sin(ang),YOU.y + cos(ang))) {
      //if hitting against wall
      for ( int m = 0; 360 > m; m += 1) {
        float dir = radians(m);
        float mx = YOU.x + sin(dir);
        float my = YOU.y + cos(dir);
        if(YOU.hit(MAP,mx,my)) {
          ang = dir + radians(1);
        }
      }
    
    }
    if (YOU.hit(MAP,YOU.x + sin(ang),YOU.y + cos(ang))) {
      //if hitting against wall
      for ( int m = 0; 360 > m; m += 1) {
        float dir = radians(m);
        float mx = YOU.x + sin(dir);
        float my = YOU.y + cos(dir);
        if(YOU.hit(MAP,mx,my)) {
          ang = dir + radians(1);
        }
      }
    
    }
    if (YOU.hit(MAP,YOU.x + sin(ang),YOU.y + cos(ang))) {
      //if hitting against wall
      for ( int m = 0; 360 > m; m += 1) {
        float dir = radians(m);
        float mx = YOU.x + sin(dir);
        float my = YOU.y + cos(dir);
        if(YOU.hit(MAP,mx,my)) {
          ang = dir + radians(1);
        }
      }
    
    }
    }
     
    
//println(ang);
    // ang = atan2(goal[0]-YOU.x,goal[1]-YOU.y); //points towards function
    //if (YOU.hit(MAP,YOU.x,YOU.y)) {
    //  //if hitting against wall
    //  for ( int i = 0; 4 > i; i++) {
    //    float dir = radians(i * 90);
    //    float mx = YOU.x + sin(dir);
    //    float my = YOU.y + cos(dir);
    //    if(YOU.hit(MAP,mx,my)) {
    //      ang = dir + radians(90);
    //    }
    //  }
    
    //}
    if (YOU.evolveReady()) { //if ready to evolve
       MAP.evolve(YOU,0); //then evolve with choice of path 0
    }
   
    ////
    toAng(0,-1);
    
    this.calc2(MAP,ang,5 ); //mandatory, makes you moves, takes angle of movement, and speed as input
    if (YOU.x != Xpre && YOU.y != Ypre) {
    Xpre = YOU.x;
    Ypre = YOU.y;
    } else {
      count++;
    }
    
  }

  
  void calc() {
    YOU.view();
    YOU.run();
  }
  void toAng(float x,float y ){
    //println(degrees(atan2(x,y)));
  }
  void calc2(map map,float ang,float speed) {
    YOU.move(map,ang,min(YOU.maxSpeed,speed) ); //max speed of maxSpeed
     map.eatan(YOU);

  }
 
}


  