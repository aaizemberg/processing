/** 
  c�rculo crom�tico por Ariel Aizemberg 
**/

int portions = 3;
int PMAX = 32;
int largo;

void setup() {
  size(250,250);
  noStroke();
  background(0);
}

void draw() {
  portions = int(1 + (PMAX * mouseX / float(width)));
  if (portions < 3) portions = 3;
  largo = mouseY;
  if (largo == 0) largo = width;
  colorMode(HSB,portions);
  background(0);
  for(int i=0; i < portions; i=i+1) {
    fill(i,100,100);
    arc(width/2, height/2, largo, largo, i*TWO_PI/portions, (i+1)*TWO_PI/portions);
  }
}

