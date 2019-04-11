
/* 
 Author: Kaycee
 Source: https://wp.nyu.edu/shanghai-ima-documentation/author/yc3525/
 Date: April 8, 2019
 
 Modified by Young / young.chung@nyu.edu
 Date: April 11, 2019
 
 */

int angle = 0;
int x = 0;
int y = 0;
int xspeed = 0; 
int yspeed = 0;

void setup()
{
  size(600, 600);
}

void draw()
{
  background(255*mouseX/width, 255*mouseY/height, 0);
  
  x = x + xspeed;
  y = y + yspeed;
  drawObject1(x, y);
  //drawObject2(mouseX, mouseY);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      xspeed = 3;
    } else if (keyCode == LEFT) {
      xspeed=-3;
    } else if (keyCode == UP ) {
      yspeed= -3;
    } else if (keyCode == DOWN ) {
      yspeed = 3;
    }
  }
 
  
  
}

void drawObject1(int x, int y) {
  pushMatrix();
  
  translate(x, y);
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
  pushMatrix();
  //translate(530, 100);
  translate(x, y);
  rotate(radians(angle));
  angle += 1;

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
