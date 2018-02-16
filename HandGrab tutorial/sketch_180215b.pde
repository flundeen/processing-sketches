// Tutorial on "handGrab"
/*-----------------------------------------
  handGrab is a leap motion variable that gives values between 0 - 1.
  When the hand is open the value of hangGrab is 0. When the hand
  creates a fistit gives the value of 1. 
*/
import de.voidplus.leapmotion.*;

LeapMotion leap;

void setup() {
  size(800, 500);
  leap = new LeapMotion(this);
}

void draw() {
  background(255);
  
  for (Hand hand : leap.getHands ()) {
    hand.draw();
  float handGrab    = hand.getGrabStrength();
  
    if (handGrab >= 0.5) {
    background(0,255,0);
  } else { 
    background(255,0,0);
  }
  }

}