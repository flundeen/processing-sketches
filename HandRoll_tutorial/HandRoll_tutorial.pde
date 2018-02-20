 // handRoll tutorial
 /*------------------------------
   handRoll is a variable that gives a value between 0 and 1. handRoll
   measures the roll of your hand, for instance if your palm is facing
   down the variable is 0. And if your palm is facing up then it gives
   the value of 0.5. In this code if your hand is facing up then the
   screen will be green and if your hand is facing down the the screen
   will be red.
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
  float handRoll    = hand.getRoll();
  
    if (handRoll >= 0.25 && handRoll <= 0.75) {
    background(0,255,0);
  } else { 
    background(255,0,0);
  }
  }

}