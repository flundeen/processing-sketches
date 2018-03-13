float xpos, ypos;
float xvel;
float yvel;
float xacc;
float yacc;
int rad = 20;
float Ang;
float Aacc;
float Avel;
void setup() {
  size(800,800);
  xpos = 300;
  ypos = 300;
  xvel = 0.5;
  yvel = 0.5;
  xacc = 0.2;
  yacc = 0.2;
  Avel = 0.05;
  Aacc = 0.02;
  
  
  
}

void draw() {
  noStroke();
  fill(0,25);
  rect(0,0,width,height);
  fill(255);
  Aacc = pow(Aacc,5);
  Avel = Avel + Aacc;
  Ang = Ang + Avel;
  xvel = xvel + xacc;
  yvel = yvel + yacc;
  xpos = cos(Ang) * (400 - xvel);
  ypos = sin(Ang) * (400 - yvel);
  ellipse(width/2 - xpos, height/2 - ypos, rad, rad);
}