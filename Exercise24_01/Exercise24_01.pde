/*
*Flynn Lundeen
*
*Exercise 24.1
*
*This graph demonstrates Micheal Jordan's Career as a pro Basketball Player
*
*/

PImage mj;

void setup() {
mj = loadImage("Micheal Jordan.jpg");

size(700,700);
}

void draw() {
image(mj,0,0,width,height);
tint(random(255),random(255),random(255));
pushMatrix();
scale(2);
translate(height/6,height/6);
beginShape(POINTS);
rotate(radians(180));
//Games Played
beginShape();
vertex(0,0);
vertex(0,19);
vertex(15,19);
vertex(15,0);
endShape();
popMatrix();
pushMatrix();
scale(2);
translate(height/6,height/6);
rotate(radians(180));
//Points per Game
beginShape();
vertex(20,0);
vertex(20,31);
vertex(35,31);
vertex(35,0);
endShape();
popMatrix();
pushMatrix();
scale(2);
translate(height/6,height/6);
rotate(radians(180));
//Assists  per game
beginShape();
vertex(40,0);
vertex(40,4.8);
vertex(55,4.8);
vertex(55,0);
endShape();
popMatrix();
pushMatrix();
scale(2);
translate(height/6,height/6);
rotate(radians(180));
//Rebounds per Game
beginShape();
vertex(60,0);
vertex(60,7.9);
vertex(75,7.9);
vertex(75,0);
endShape();
popMatrix();
pushMatrix();
scale(2);
translate(height/6,height/6);
rotate(radians(180));
//Steals Per game
beginShape();
vertex(80,0);
vertex(80,1.6);
vertex(95,1.6);
vertex(95,0);
endShape();
popMatrix();
pushMatrix();
scale(2);
translate(height/6,height/6);
rotate(radians(180));
//turnovers per game
beginShape();
vertex(100,0);
vertex(100,2.6);
vertex(115,2.6);
vertex(115,0);
endShape();
popMatrix();
scale(100);
}