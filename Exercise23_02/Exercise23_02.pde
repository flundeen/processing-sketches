float x1 = 50;
float y1 = 50;
void setup(){
  translate(0,20);
  shap();
  translate(10,0);
  shap2();
  translate(10,0);
  shap3();
  for (int i =0; 3 > i; i ++) {
    shap();
    translate(10,0);
    shap2();
    translate(10,0);
  }
  
}


void shap() {
  rect(0,0,10,10);
  rect(0,10,10,10);
  rect(0,20,10,10);
}

void shap2() {
  triangle(10,10,5,0,0,10);
  rect(0,10,10,10);
  triangle(10,20,5,30,0,20);
}

void shap3() {
  rect(0,-10,10,10);
  rect(0,0,10,10);
  rect(0,10,10,10);
  rect(0,20,10,10);
  rect(0,30,10,10);
}