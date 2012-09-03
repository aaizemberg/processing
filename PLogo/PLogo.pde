/**
 * PLogo 
 * by Ariel Aizemberg
 *
 * http://en.wikipedia.org/wiki/Logo_(programming_language)
 */

class Turtle {
  float x,y,dir;

  Turtle (float xx, float yy) {  
    x = xx;
    y = yy;
    dir = -PI/2;
  } 

  void forward(float n) { 
    float x1 = x + n*cos(dir);
    float y1 = y + n*sin(dir);
    line(x, y, x1, y1); 
    x = x1;
    y = y1;
  } 

  void right(float a) {
    dir = dir + radians(a);
  }

  void left(float a) {
    dir = dir - radians(a);
  }

  void back(float n) {
    right(180);
    forward(n);
    right(180); 
  } 

}

void setup() {
  size(500,500);
  stroke(255);

  Turtle t1 = new Turtle(width/2, height/2);

  for(int j=1; j<=30; j++) {
    for(int i=1; i<=360; i++) {
      t1.forward(2);
      t1.right(1);
    }
    t1.right(360/30); 
  }

}


