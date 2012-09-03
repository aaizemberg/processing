void setup() {
  size(800, 200);

  noStroke();

  fill(0.25 * 256);
  rect(0, 0, width/2, height);

  fill(0.75 * 256);
  rect(width/2, 0, width/2, height);

  fill(128);
  rectMode(CENTER);
  rect(0.25 * width, height / 2, 30, 30);

  rect(0.75 * width, height / 2, 30, 30);
}

