class TempleRun {
  
  int rjump;
  
  int laneCount;
  float rdist;
  int dist;
  int lvl;
  float rVel;
  String printrun;
  int depth;
  int runnerWidth;
  
  float rAcc;
  float yPos;
  float yvel = -1;
  float yAcc = -2;
  int wcount = 10;
  int count = 0;
  int songcur = 0;
  flor[] flr; 
  wall[] wl;
  import processing.sound.*;
  SoundFile theory;
  SoundFile xstep;
  SoundFile dryout;
  SoundFile letgo;
  
import controlP5.*;

ControlP5 cp5;
  
  
  TempleRun(int d, PApplet this2) {
    theory= new SoundFile (this2, "theory.mp3");
    xstep  = new SoundFile (this2, "xstep.mp3");
    dryout = new SoundFile (this2, "dryout.mp3");
    letgo = new SoundFile (this2, "letgo.mp3");

    cp5 = new ControlP5(this2);
    
    
     
    rAcc = 0.015;
    
    rVel = 10;
     laneCount = 4;
    RunnerLane = 2;
    depth = d * -1;
    runnerWidth = width/18 * 2;
    flr = new flor[abs(depth)/500];
    wl = new wall[ 10];
    for (int i = 0; i < abs(depth )/ 500; i++) {
      flr[i] = new flor(depth + i * 500);// Where you input the variable data for 
      
    }
    for (int i = 0; i < wcount; i++) {
      wl[i] = new wall(depth);// Where you input the variable data for 
      
    }
    //print(depth);
  }
  void Set() {
    for (int i = 0; i < wcount; i++) {
    wl[i].SET(i -1);
    }
  }
  
  void run() {
    
    if (resett == true) {
       rAcc = 0.015;
    rdist = 0;
    dist = 0;
    rVel = 10;
     laneCount = 4;
    RunnerLane = 2;
   
    
    
    resett = false;
    Rlive = true;
    }
    
    if (Rlive == true) {
     if (count == 5000) {
       count = 0;
     }
     if (count == 0 ) {
      songcur = int(random(1,5));
      if (songcur == 1) {
      theory.play();
      }
      if (songcur == 2) {
      letgo.play();
      }
      if (songcur == 3) {
      dryout.play();
      }
      if (songcur == 4) {
      xstep.play();
      }
      
     }
     count ++;
      
      
    rVel += rAcc;
    dist += rVel/10;
    for (int i = 0; i < wcount; i++) {
    
    wl[i].display(rVel, RunnerLane, yPos);
    }
    if (RunnerLane < 0) {
      RunnerLane = 0;
    }
    if (RunnerLane > laneCount - 2) {
      RunnerLane = laneCount - 1;
    }
    display();
    }
    if (Rlive == false) {
      textSize(120);
      fill(255);
      text(dist,width/2 - 300,height/2,-200);
      textSize(80);
      text("Try Again?",width/2 - 250,height/4*3);
      dchek = true;
    }
    
    
    
  }
  
  //void printDisplay() {
    
  //    //for (int i = 0; i < 40; i++ ) {
  //    //  println(" 0 0 0 0");
        
  //    //}
  //    for (int i = 0; i < laneCount; i++) {
  //      if (RunnerLane == i) {
  //        printrun += "* ";
  //      } 
  //      if (RunnerLane != i) {
  //      printrun += "0 ";
  //    }
  //    }
  //    println(printrun);
  //    printrun = " ";
    
    
  
  
  //}
  
  void display() {
    textSize(32);
    fill(255);
    text(dist,0,0, -200);
    pushMatrix();
    translate(10,100,-75);
    stroke(0);
    strokeWeight(2);
    line(width/6, height/4 * 3,0,width/6, height/4 * 3,depth);
    line(width/6 * 5, height/4 * 3,0,width/6 * 5, height/4 * 3, depth);
    line(width/6 * 3, height/4 * 3,0,width/6 * 3, height/4 * 3, depth);
    line(width/6 * 2, height/4 * 3,0,width/6 * 2, height/4 * 3, depth);
    line(width/6 * 4, height/4 * 3,0,width/6 * 4, height/4 * 3, depth);
    line(width/6, height/4 * 3,depth, width/6 * 5, height/4 * 3, depth);
    line(width/6, height/4 * 3,0, width/6 * 5, height/4 * 3,0 );
    
    for (int i =0; i < abs(depth)/500; i++){
      flr[i].linMove(rVel,depth);
    
    }
    fill(200);
    translate(width/2, height/4 * 3 + 251, depth / 2);
    box(width/6 * 4, 500, depth);
    fill(255);
    popMatrix();
    
    pushMatrix();
    if (rjum == true) { 
      rjum= false;
      
      if (yPos >= 00) {
       yvel = 0;
      }
      yvel = (width/40) * -1; //hard coded
      
      
      
      
    } 
    else {
      
    yPos += yvel;
    yvel += height * 0.002; //hard coded
   
    
    if (yPos > 00) {
       yvel = 0;
      }
      
    }
     runnerY =height/4 * 3 - (runnerWidth/2)+ yPos;
     
     translate( width/12 * (RunnerLane * 2 + 3), runnerY+100, -100 - runnerWidth/2);
    noStroke();
    box(runnerWidth);
    popMatrix(); //runner display
    
    
    
    
    
    }

  }
  
 
    

class wall  {
   ArrayList <float[]> wallPos = new ArrayList();
  int depth;

  
   
    wall(int d) {
      depth = d;
      
      
    }
    

  
  void SET(int I) {
   
      float[] a = {0,0,0,0,0}; //lane, width, height, start length, end length
      wallPos.add(a);
    
    
    
      wallPos.get(0)[0] = int(random(1,4));
      wallPos.get(0)[1] = int(random(1,4 - wallPos.get(0)[0]));
      if (wallPos.get(0)[1] == 1) {
        wallPos.get(0)[2] = int(random(1,2));
      } else {
        wallPos.get(0)[2] = 1;
      }
      wallPos.get(0)[3] = depth - (I * 500);
      wallPos.get(0)[4] = wallPos.get(0)[3] + 30;
    
    
  }
  void reset() {
     for (int i = 0; i < wallPos.size(); i++) {
      wallPos.get(0)[0] = int(random(0,4));
      wallPos.get(0)[1] = int(random(1,wallPos.get(i)[0]));
      wallPos.get(0)[2] = int(random(1,3));
      wallPos.get(0)[4] = wallPos.get(i)[3] + 30;
    }
  
  }
    
  
  
  void display(float wallVel,int rlane, float ypos) {
    
  
    for(int i = 0; i < wallPos.size(); i ++) {
      pushMatrix();
      translate(10,100,0);
      wallPos.get(i)[3] = abs(wallPos.get(i)[3] + wallVel) * -1;
      
     
      //strokeWeight(2);
      //stroke(random(0,255), random(0,255), random(0,255));
      noStroke();
      fill(random(0,255), 50);
      if ( wallPos.get(i)[3] > - 150) {
        fill(255,0,0);
      }
      
      
      if ((rlane == wallPos.get(i)[0] && wallPos.get(i)[3] > - 150 )
      || (wallPos.get(i)[1] == 2 && rlane+1 == wallPos.get(i)[0] && wallPos.get(i)[3] > - 150 )
      || (rlane == wallPos.get(i)[0] && wallPos.get(i)[3] > - 150 )
      || (wallPos.get(i)[1] == 2 && rlane+1 == wallPos.get(i)[0] && wallPos.get(i)[3] > - 150)) {
        
        if( wallPos.get(i)[2] == 2) {
          if (height/4 * 3 - (100/2)+ ypos >= height/1.38910098403 - (width/6 * wallPos.get(i)[2] - 125)) {
          Rlive = false;
          }
        } else {
        
          if (height/4 * 3 - (100/2)+ ypos >= height/1.38910098403 - 125) {
            Rlive = false;
          }
        }
       // println(height/4 * 3 - (100/2)+ ypos," ", (height/4 * 3 + 251 - 125) - width/6 * (wallPos.get(i)[2] - 125)/2);
        
    
      }
      if (height/4 * 3 - (100/2)+ ypos >= height/1.38910098403 - 50) {
        jcount = 0;
      }
      if (wallPos.get(i)[1] == 2 && rlane+1 == wallPos.get(i)[0] || rlane == wallPos.get(i)[0]) {
        fill(0,255,0);
      }
      if (rlane == wallPos.get(i)[0] && wallPos.get(i)[3] > - 150 || wallPos.get(i)[1] == 2 && ypos < (wallPos.get(i)[2] - width/6 * 3 - 125) - 600) {
        fill(0,0,255);
      }
      
      
      if ( wallPos.get(i)[1] == 1) {
           translate(width/6 * 1.5 + (wallPos.get(i)[0] * width/6) , height/4 * 3 - width/12 , wallPos.get(i)[3]);
           if (wallPos.get(i)[2] == 2) {
          translate(0, 0, 0);
           box(width/6, (width/6 * wallPos.get(i)[2] - 125) * 2, 100);
        } else {
          box(width/6, width/6 * wallPos.get(i)[2] , 100);
        }
        
        }else if (wallPos.get(i)[1] == 2) {
           translate(width/6 * 1.5 + (wallPos.get(i)[0] * width/6) - width/12 , height/4 * 3 - width/12 , wallPos.get(i)[3]);
           if (wallPos.get(i)[2] == 2) {
          translate(0, - 60, 0);
           box(width/6 * 2, (width/6 * wallPos.get(i)[2] - 125) * 2, 100);
           
        }else {
           box(width/6 * 2, width/6 * wallPos.get(i)[2] , 100);
        }
      
      }
    
      
      popMatrix();
      if ( wallPos.get(i)[3] > -100) {
         wallPos.get(i)[3] = -5000;
         reset();
      }
    }
    
    
  }
 

}


class flor {
  float z;
  
  
  flor(int startPoint) {
    z = startPoint;
    
  }
  
  void linMove(float linVel, int depth) {
    line(width/6, height/4 * 3, z, width/6 * 5, height/4 * 3, z);
    //line(0,0,0,random(500),random(0,500),random(0,500));
    z += linVel;
    if (z > 0) {
      z = depth ;
    }
  }
  
}