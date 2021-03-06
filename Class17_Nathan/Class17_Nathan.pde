/* 
 Author: Nathan
 Source: https://wp.nyu.edu/shanghai-ima-documentation/foundations/interaction-lab/zw1806/cross-wire-zhenming-wang-professor-young/
 Date: March 31, 2019
 
 Modified by Young / young.chung@nyu.edu
 Date: April 11, 2019
 
 */

void setup() {
  size(600, 600);
  background(50);
  smooth();
}

void draw() {
  // cloud
  drawMoon();
  drawCloud(0, 0, color(255, 0, 0, 100));
  drawCloud(200, 50, 0);
  drawCloud(250, 70, 255);
}

void drawCloud(int x, int y, color c) {
  pushMatrix();
  translate(x, y);
  fill(c);
  beginShape();
  vertex(50, 180);
  bezierVertex(50, 150, 80, 120, 132, 150);
  bezierVertex(150, 115, 210, 135, 200, 160);
  bezierVertex(270, 175, 230, 235, 170, 220);
  bezierVertex(170, 250, 80, 255, 70, 220);
  bezierVertex(20, 240, 25, 170, 50, 180);
  endShape();
  popMatrix();
}



void drawMoon() {
  fill(255, 250, 190);
  beginShape();
  vertex(130, 60);
  bezierVertex(250, 70, 210, 200, 130, 200);
  bezierVertex(150, 190, 200, 115, 130, 60);
  endShape();
}
