/*
In this code we created a spell casting interface
that can create a variety spells. Ranging from lightning,
fiery blocks, black holes, enemies, and other features.
We implemented an interactive interface called LEAP
motion that tracks Hand Movement. 
*/

import de.voidplus.leapmotion.*; //
float x = 0;
float y = 0;
float z = 0;
float x2 = 0;
float y2 = 0;
float z2 = 0;
ArrayList AA = new ArrayList();
enemies GUYS = new enemies();
LeapMotion leap; 

void setup() {

  size(displayWidth, displayHeight,P3D); //
  background(255); //
  // ...
  GUYS.addGUYS(50,1000,100);
  leap = new LeapMotion(this);
}








void draw() {
  background(255);
  // ...
GUYS.run(AA);
  int fps = leap.getFrameRate();
  boolean[] hands = {false,false};
  PVector[] handPos = {new PVector(0,0), new PVector(0,0)};
  float[] handYaws = {0,0};
  for (Hand hand : leap.getHands ()) {


    // ==================================================
    // 2. Hand

    int     handId             = hand.getId();
    PVector handPosition       = hand.getPosition();
    PVector handStabilized     = hand.getStabilizedPosition();
    PVector handDirection      = hand.getDirection();
    PVector handDynamics       = hand.getDynamics();
    float   handRoll           = hand.getRoll();
    float   handPitch          = hand.getPitch();
    float   handYaw            = hand.getYaw();
    boolean handIsLeft         = hand.isLeft();
    boolean handIsRight        = hand.isRight();
    float   handGrab           = hand.getGrabStrength();
    float   handPinch          = hand.getPinchStrength();
    float   handTime           = hand.getTimeVisible();
    PVector spherePosition     = hand.getSpherePosition();
    float   sphereRadius       = hand.getSphereRadius();

    // --------------------------------------------------
    // Drawing
   
    if (hand.isLeft() && handGrab > 0.5) {
      hands[0] = true;
      handPos[0] = handPosition;
      
    }
    if (hand.isRight() && handGrab > 0.5) {
      hands[1] = true;
      handPos[1] = handPosition;
     
    }
    if (hand.isRight() ) {
      
     handYaws[1] = handYaw;
    }
    else {
      
        handYaws[0] = handYaw;
    }
    hand.draw();
     PVector a = new PVector(-handRoll,handPitch,handYaw);
     
    if (handGrab < 0.7 && handIsRight ) {

      dukan BB = new dukan();
     
      BB.init(handPosition,a);
      AA.add(BB); 

      
    }
  
   int minDUKAN = 0;
    for (int i = 0; AA.size() - minDUKAN > i; i++) {
      ((dukan)AA.get(i)).run();
      if (((dukan)AA.get(i)).gens > 300) {
        AA.remove(i);
        minDUKAN += 1;
      }
    }
     x2 = x;
     y2 = y;
      z2 += 25;
    pushMatrix();
    translate(x2,y2,z2);
    fill(50,0,0);
    box(30);
    popMatrix();
    //println(handDirection.x);
   
    
    //a.update(handPosition,handDirection.x,handGrab);
    //ellipse(handPosition.x,handPosition.y,5,5);

    // ==================================================
    // 3. Arm

    if (hand.hasArm()) {
      Arm     arm              = hand.getArm();
      float   armWidth         = arm.getWidth();
      PVector armWristPos      = arm.getWristPosition();
      PVector armElbowPos      = arm.getElbowPosition();
    }


    // ==================================================
    // 4. Finger

    Finger  fingerThumb        = hand.getThumb();
    // or                        hand.getFinger("thumb");
    // or                        hand.getFinger(0);

    Finger  fingerIndex        = hand.getIndexFinger();
    // or                        hand.getFinger("index");
    // or                        hand.getFinger(1);

    Finger  fingerMiddle       = hand.getMiddleFinger();
    // or                        hand.getFinger("middle");
    // or                        hand.getFinger(2);

    Finger  fingerRing         = hand.getRingFinger();
    // or                        hand.getFinger("ring");
    // or                        hand.getFinger(3);

    Finger  fingerPink         = hand.getPinkyFinger();
    // or                        hand.getFinger("pinky");
    // or                        hand.getFinger(4);
   float distLow = 500;
    PVector pos = new PVector(0,0);
    int id = 0;
 
    if ((int)random(100) == 1 && GUYS.GUYS.size() > 20) {
           float startX = handPosition.x;
     float startY = handPosition.y;
     float startZ = handPosition.z;
      for (int i = 0; 10 > i; i++) {
   if (handGrab > .5) {
   
        for (int j = 0; GUYS.GUYS.size() > j; j++) {
          if (dist(startX,startY,startZ,((enemy)GUYS.GUYS.get(j)).x,((enemy)GUYS.GUYS.get(j)).y,((enemy)GUYS.GUYS.get(j)).z) < distLow) {
            distLow = dist(startX,startY,startZ,((enemy)GUYS.GUYS.get(j)).x,((enemy)GUYS.GUYS.get(j)).y,((enemy)GUYS.GUYS.get(j)).z);
            pos = new PVector( ((enemy)GUYS.GUYS.get(j)).x,((enemy)GUYS.GUYS.get(j)).y,((enemy)GUYS.GUYS.get(j)).z);
            id = j;
           
          }
        }
        
    stroke(0,250,0);
    light bullet = new light(startX,startY,startZ,0.03,pos.x,pos.y,pos.z);
    bullet.run();
    GUYS.GUYS.remove(id);
    startX = pos.x;
    startY = pos.y;
    startZ = pos.z;
    }
      }
    }
    
    
    for (Finger finger : hand.getFingers()) {
      // or              hand.getOutstretchedFingers();
      // or              hand.getOutstretchedFingersByAngle();
      
      int     fingerId         = finger.getId();
      PVector fingerPosition   = finger.getPosition();
      PVector fingerStabilized = finger.getStabilizedPosition();
      PVector fingerVelocity   = finger.getVelocity();
      PVector fingerDirection  = finger.getDirection();
      float   fingerTime       = finger.getTimeVisible();
     
      if (handIsLeft && handGrab < 0.5) {
      light Ap = new light(fingerPosition.x-(handRoll*3),fingerPosition.y-(handPitch*3),fingerPosition.z-(handYaw*3),.03,fingerPosition.x,fingerPosition.y,fingerPosition.z);
      //light Ap = new light(fingerPosition.x,fingerPosition.y,fingerPosition.z-400,.03,fingerPosition.x,fingerPosition.y,fingerPosition.z);
      Ap.run();
      float baiofa = 0;
      for (int i = 0; AA.size()- baiofa > i; i++) {
        if (abs( Ap.x - ((dukan)(AA.get(i))).x2) + abs(Ap.y-((dukan)(AA.get(i))).y2) + abs(Ap.z-((dukan)(AA.get(i))).z2) < 100) {
          ((dukan)(AA.get(i))).red = 250;
            ((dukan)(AA.get(i))).size += 2;
           ((dukan)(AA.get(i))).x *= 0;
           ((dukan)(AA.get(i))).y *= 0;
           ((dukan)(AA.get(i))).z *= 0;
           if ( ((dukan)(AA.get(i))).size > 50) {
             AA.remove(i);
              baiofa++;
           }
        }
      }
 //this clears the screen when you pinch//
    if (handPinch == 1) {
      AA = new ArrayList();
      println("hello");
      println(handPinch);
    }

      }
      
      // ------------------------------------------------
      // Drawing

      // Drawing:
      // finger.draw();  // Executes drawBones() and drawJoints()
      // finger.drawBones();
      // finger.drawJoints();

      // ------------------------------------------------
      // Selection

      switch(finger.getType()) {
      case 0:
        // System.out.println("thumb");
        break;
      case 1:
        // System.out.println("index");
        break;
      case 2:
        // System.out.println("middle");
        break;
      case 3:
        // System.out.println("ring");
        break;
      case 4:
        // System.out.println("pinky");
        break;
      }


      // ================================================
      // 5. Bones
      // --------
      // https://developer.leapmotion.com/documentation/java/devguide/Leap_Overview.html#Layer_1

      Bone    boneDistal       = finger.getDistalBone();
      // or                      finger.get("distal");
      // or                      finger.getBone(0);

      Bone    boneIntermediate = finger.getIntermediateBone();
      // or                      finger.get("intermediate");
      // or                      finger.getBone(1);

      Bone    boneProximal     = finger.getProximalBone();
      // or                      finger.get("proximal");
      // or                      finger.getBone(2);

      Bone    boneMetacarpal   = finger.getMetacarpalBone();
      // or                      finger.get("metacarpal");
      // or                      finger.getBone(3);

      // ------------------------------------------------
      // Touch emulation

      int     touchZone        = finger.getTouchZone();
      float   touchDistance    = finger.getTouchDistance();

      switch(touchZone) {
      case -1: // None
        break;
      case 0: // Hovering
        // println("Hovering (#" + fingerId + "): " + touchDistance);
        break;
      case 1: // Touching
        // println("Touching (#" + fingerId + ")");
        break;
      }
    }
 


    // ==================================================
    // 6. Tools

    for (Tool tool : hand.getTools()) {
      int     toolId           = tool.getId();
      PVector toolPosition     = tool.getPosition();
      PVector toolStabilized   = tool.getStabilizedPosition();
      PVector toolVelocity     = tool.getVelocity();
      PVector toolDirection    = tool.getDirection();
      float   toolTime         = tool.getTimeVisible();

      // ------------------------------------------------
      // Drawing:
      // tool.draw();

      // ------------------------------------------------
      // Touch emulation

      int     touchZone        = tool.getTouchZone();
      float   touchDistance    = tool.getTouchDistance();

      switch(touchZone) {
      case -1: // None
        break;
      case 0: // Hovering
        // println("Hovering (#" + toolId + "): " + touchDistance);
        break;
      case 1: // Touching
        // println("Touching (#" + toolId + ")");
        break;
      }
    }
  }
  if (hands[0] && hands[1]) {
    ball A = new ball();
    A.go( (handPos[0].add(handPos[1])).mult(.5).x,(handPos[0].add(handPos[1])).mult(.5).y,(handPos[0].add(handPos[1])).mult(.5).z);
   for (int j = 0; AA.size() > j; j++) {
     PVector BIA =  new PVector(width/2,height*9,0); 
     PVector BIA2 = new PVector(((dukan)AA.get(j)).x2,((dukan)AA.get(j)).y2,((dukan)AA.get(j)).z2);
     PVector move = new PVector( ( ((BIA.sub(BIA2)))).mult(.05).x,( ((BIA.sub(BIA2)))).mult(.05).y,( ((BIA.sub(BIA2)))).mult(.05).z );
     ((dukan)AA.get(j)).x2 += move.x;
     ((dukan)AA.get(j)).y2 += move.y;
     ((dukan)AA.get(j)).z2 += move.z;
       ((dukan)AA.get(j)).gens --;
     
   }
  }
   if ( handYaws[0] > 0 && handYaws[1] > 0) {
        for (int q = 0; GUYS.GUYS.size() > q; q++) {
          ((enemy)GUYS.GUYS.get(q)).z -= 3;
        }
      }

  // ====================================================
  // 7. Devices

  for (Device device : leap.getDevices()) {
    float deviceHorizontalViewAngle = device.getHorizontalViewAngle();
    float deviceVericalViewAngle = device.getVerticalViewAngle();
    float deviceRange = device.getRange();
  }
}

class enemies {
  ArrayList GUYS = new ArrayList();
  void addGUYS(int num, float dist, float rand) {
    for (int i = 0; num > i; i++) {
      GUYS.add(new enemy(random(width), random(height),-(dist+ random(-rand,rand))));
    }
  }
  void run(ArrayList fireBalls) {
    int minusSSSSS = 0;
    for (int i = 0; GUYS.size()-minusSSSSS > i; i++) {
      if(((enemy)GUYS.get(i)).run(fireBalls)) {
        GUYS.remove(i);
        minusSSSSS++;
      }
    }
  }
}
class enemy {
  float x,y,z;
  enemy(float x_, float y_, float z_) {
    x = x_;
    y = y_;
    z= z_;
  }
  boolean run(ArrayList fireBalls) {
    z += 1;
    pushMatrix();
    translate(x,y,z);
    box(5,30,5);
    
    popMatrix();
    for (int i  = 0; fireBalls.size() > i; i++) {
      if (dist( ((dukan)fireBalls.get(i)).x2,((dukan)fireBalls.get(i)).y2,((dukan)fireBalls.get(i)).z2,x,y,z) < 20) {
        return true;
      }
    }
    return false;
    
  }
}
class dukan {
  int gens = 0;
  float x = 0;
  float y = 0;
  float z = 0;
  float x2 = 0;
  float y2 = 0;
  float z2 = 0;
  boolean grabbed = false;
   float red = 0;
   float size = 30;
  void init( PVector handPosition, PVector handDynamics) {
     x2 = handPosition.x + random(30);
      y2 = handPosition.y + random(30);
      z = handDynamics.x;
      x = handDynamics.y;
      y = handDynamics.z;
      z2 = handPosition.z;
  }
  void run() {
  gens++;
  noStroke();
     x2 += (x/5);
     y2 += (y/5);
      z2 += (z/5);
      
    pushMatrix();
    translate(x2,y2,z2);
    fill(x2,red,z2);
    box(size);
    popMatrix();
  }
}
class ball {
  light[] lights = new light[50];
  
  void go(float x,float y,float z) {
     for (int i = 0; lights.length > i; i++) {
     lights[i] = new light(x + sin(radians(0) + random(360)) * random(-60,60),y+ random(-50,50),z+ cos(radians(0)+ random(360)) * random(-60,60),.03,x,y,z);
     
     

 }

  for (int i =0; lights.length > i; i++) {
    lights[i].chan = 3;
    lights[i].run();
  }
   pushMatrix();
  translate(x,y,z);
  stroke(random(250),0,0,200);
  fill(random(250),0,0,200);
  //sphere(250);
  popMatrix();
  }
}
class light {
  float x,y,var,xS,yS,zS,z;
  float dis;
  float tims = 20;
  float chan = 10;
  ArrayList li = new ArrayList();
  float max = 10;
  float startCol = 250;
  float hue = random(100,150);
  light( float x_, float y_, float z_, float var_, float xS_, float yS_, float zS_) {
    z = z_;
    x = x_;
    y = y_;
    var = var_;
    xS = xS_;
    yS = yS_;
    zS = zS_;
    dis = dist(xS,yS,zS,x,y,z);
  }
  void run() {
   
      colorMode(HSB);
    float xCur = xS;
    float yCur = yS;
    float zCur = zS;
    for (int i = 0; tims > i; i++ ) {
      float a = (i/tims * (x-xS) + random(-var*dis,var*dis)) + xS;
      float b = (i/tims * (y-yS) + random(-var*dis,var*dis)) + yS;
      float c = (i/tims * (z-zS) + random(-var*dis,var*dis)) + zS;
       strokeWeight( ((tims-i)/tims) *max);
     stroke(hue,startCol - (i/tims) * 250,startCol - (i/tims) * 250);
     
      line(xCur,yCur,zCur,a,b,c);
      xCur = a;
      yCur = b;
      zCur = c;
      if ((int)random(chan) == 1) {
        
        light temp = new light(xCur+ random(-dis/5.0,dis/5.0),yCur+ random(-dis/5.0,dis/5.0),zCur + random(-dis/5.0,dis/5.0),(var/2),xCur,yCur,zCur);
        temp.chan*=2.1;
        temp.startCol = startCol - (i/tims) * 250;
        temp.max = ((tims-i)/tims) *max;
        temp.run();
        
        
      }
   
  
  }
  }
}

class fireDUKANNNPARTICLLLLLELELELELLELELELELLEBALLLLLLLLLLLLLLLLLL {
  float x,y,z;
  ArrayList fireBALLLJOJWIOAJOISJIOJFAOISJFOW = new ArrayList();
  fireDUKANNNPARTICLLLLLELELELELLELELELELLEBALLLLLLLLLLLLLLLLLL(float x_, float y_, float z_) {
    x = x_;
    y = y_;
    z = z_;
    for (int i = 0; 50 > i; i++) {
      fireBALLLJOJWIOAJOISJIOJFAOISJFOW .add(new fireDUKANNNPARTICLLLLLELELELELLELELELELLE(x,y,z));
    }
  }
  void run() {
    for (int i = 0; 50 > i; i++) {
      ( (fireDUKANNNPARTICLLLLLELELELELLELELELELLE)fireBALLLJOJWIOAJOISJIOJFAOISJFOW .get(i)).run();
    }
  }
}
class fireDUKANNNPARTICLLLLLELELELELLELELELELLE {
  float x,y,z;
  float xVel,yVel,zVel;
  fireDUKANNNPARTICLLLLLELELELELLELELELELLE( float x_, float y_,float z_) {
    x = x_;
    y = y_;
    z = z_;
    xVel = random(-5,5);
    yVel = random(-5,5);
    zVel = random(-5,5);
    
  }
  void run() { 
    //x += xVel;
    //y += yVel;
    //z += zVel;
    xVel *= .99;
    yVel *= .99;
    zVel *= .99;
    yVel += 0.1;
    pushMatrix();
    translate(x,y,z);
    
    sphere(30);
    popMatrix();
  }
  
}