
/* 
 Author: Kaycee
 Source: https://wp.nyu.edu/shanghai-ima-documentation/author/yc3525/
 Date: April 8, 2019
 
 
 */

void setup()
{
  size(600, 600);
}

void draw()
{
  background(255*mouseX/width, 255*mouseY/height, 0);
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

  noStroke();
  fill(211);
  rect(310, 300, 120, 90);

  fill(190);
  beginShape();
  vertex(310, 300);
  vertex(410, 150);
  vertex(490, 150);
  vertex(430, 300);
  endShape();

  fill(105);
  beginShape();
  vertex(410, 150);
  vertex(490, 150);
  vertex(530, 100);
  endShape();

  fill(80);
  beginShape();
  vertex(530, 100);
  vertex(490, 150);
  vertex(430, 300);
  vertex(430, 390);
  vertex(490, 315);
  endShape();
}
