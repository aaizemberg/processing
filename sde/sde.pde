/* @pjs preload="img/2010-09-30.gif,img/2010-10-16.gif,img/2010-11-01.gif,img/2010-11-17.gif,img/2010-12-03.gif,img/2010-12-19.gif,img/2011-01-01.gif,img/2011-01-17.gif,img/2011-02-02.gif,img/2011-02-18.gif,img/2011-03-06.gif,img/2011-03-22.gif,img/2011-04-07.gif,img/2011-04-23.gif,img/2011-05-09.gif,img/2011-05-25.gif,img/2011-06-10.gif,img/2011-06-26.gif,img/2011-07-12.gif,img/2011-07-28.gif,img/2011-08-13.gif,img/2011-08-29.gif,img/2011-09-14.gif"; */

/*
  idea y programacion: Ariel Aizemberg
  fecha: 26-oct-2011
  licencia: (CC BY 2.5) http://creativecommons.org/licenses/by/2.5/ar/
*/

PFont font;
PImage b;

String img[] = {'img/2010-09-30.gif', 'img/2010-10-16.gif', 'img/2010-11-01.gif', 'img/2010-11-17.gif', 'img/2010-12-03.gif', 'img/2010-12-19.gif', 'img/2011-01-01.gif', 'img/2011-01-17.gif', 'img/2011-02-02.gif', 'img/2011-02-18.gif', 'img/2011-03-06.gif', 'img/2011-03-22.gif', 'img/2011-04-07.gif', 'img/2011-04-23.gif', 'img/2011-05-09.gif', 'img/2011-05-25.gif', 'img/2011-06-10.gif', 'img/2011-06-26.gif', 'img/2011-07-12.gif', 'img/2011-07-28.gif', 'img/2011-08-13.gif', 'img/2011-08-29.gif', 'img/2011-09-14.gif'};

int pidx;

void setup() {
  size(700, 602);
  background(0);
  stroke(128);

  pidx = 0;
  b = loadImage(img[pidx]);
  image(b, 1, 1);

  fechas(0);
}

void fechas(int idx_bold) {
  
  fill(255);
  rect(601,0,98,601);

  textAlign(CENTER);
  for (int i = 0; i <= 22; i++) {
    if ( i == idx_bold ) {
        fill(255,0,0);
    }
    else {
        fill(128);
    }
    text(img[i].substring(4,14), 650, 15 + (i * (600/23)));
  }

}

void mouseMoved() { 
  int m = (int)map(mouseY, 0, 600, 0, 23);
  if ( m >= 0 && m <= 22) {
    if ( m != pidx ) {
      pidx = m;
      b = loadImage(img[pidx]);
      fechas(pidx);
      image(b, 1, 1);
    }  
  }
}

