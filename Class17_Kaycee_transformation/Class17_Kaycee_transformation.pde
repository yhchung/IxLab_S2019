// https://wp.nyu.edu/shanghai-ima-documentation/author/yc3525/

int angle = 0;
int x1;
int xspeed = 0;

void setup()
{
  size(800, 800);
}

void draw()
{
  background(255*mouseX/width, 255*mouseY/height, 0);

  x1 = x1 + xspeed;
  drawObject1(x1);
  drawObject2(mouseX, mouseY);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      xspeed = 3;
    } else if (keyCode == LEFT) {
      xspeed = -3;
    }
  }
}

void drawObject1(int x) {
  pushMatrix();
  translate(x, 0);
  noStroke();
  beginShape();
  fill(211, 211, 211, 200);
  vertex(10, 400);
  vertex(50, 200);
  vertex(130, 200);
  vertex(90, 300);
  endShape();

  noStroke();
  fill(105, 105, 105, 200);
  beginShape();
  vertex(10, 400);
  vertex(90, 300);
  vertex(130, 350);
  endShape();

  noStroke();
  fill(190, 190, 190, 200);
  beginShape();
  vertex(50, 200);
  vertex(120, 100);
  vertex(210, 100);
  vertex(130, 200);
  endShape();

  fill(80, 80, 80, 200);
  noStroke();
  beginShape();
  vertex(130, 200);
  vertex(90, 300);
  vertex(130, 350);
  vertex(170, 300);
  vertex(210, 100);
  endShape();
  popMatrix();
}

void drawObject2(int x, int y) {
  //translate(530, 100);
  angle += 1;
  pushMatrix();
  translate(x, y);
  rotate(radians(angle));
  noStroke();
  
  fill(211);
  rect(310-530, 300-100, 120, 90);

  fill(190);
  beginShape();
  vertex(310-530, 300-100);
  vertex(410-530, 150-100);
  vertex(490-530, 150-100);
  vertex(430-530, 300-100);
  endShape();

  fill(105);
  beginShape();
  vertex(410-530, 150-100);
  vertex(490-530, 150-100);
  vertex(530-530, 100-100);
  endShape();

  fill(80);
  beginShape();
  vertex(530-530, 100-100);
  vertex(490-530, 150-100);
  vertex(430-530, 300-100);
  vertex(430-530, 390-100);
  vertex(490-530, 315-100);
  endShape();
  popMatrix();
}
