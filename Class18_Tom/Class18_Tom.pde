/*
  Author: Tom
 Source: https://wp.nyu.edu/shanghai-ima-documentation/foundations/interaction-lab/young-chung/lz1802/recitation-7-processing-animation-by-liyang-zhu-tom/
 Date: April 13, 2019
 
 Modified by Young / young.chung@nyu.edu
 Date: April 14, 2019
 */

float angle = 0f;

int[] posX = { 100, 150, 200, 50 };
int[] posY = { 304, 431, 343, 11 };

void setup()
{
  size(600, 600);
  frameRate(60);
  colorMode(HSB, 255);
}

void draw()
{
  background(0);
  //drawHexagon(mouseX, mouseY);
  // draw 5 Hexagons using for-loop and arrays
  for (int i =0;i<4;i++){
    drawHexagon(posX[i],posY[i]);
  }
  angle += 1;
  // angle += speedAngle 
  // speedAngle = map ( valuefromArduino, 0, 1024, 0, 1);
}

void drawHexagon(int x, int y) {
  pushMatrix();
  translate(x, y);
  float sizeScale = 0.8 - sqrt((x-width/2)*(x-width/2)+(y-height/2)*(y-height/2))/1000f;
  for (int i=0; i<60; i++)
  {
    rotate(radians(1.8 + angle * (1 - i/500)));

    hexagon(map(abs(i-(float)x/width*60f+(float)y/height*60f), 0, 59, 0, 255), 
      255, 
      255, 
      (240-4*i)*sizeScale);
  }
  
  popMatrix();
}

void hexagon(float r, float g, float b, float size)
{
  fill(r, g, b);
  noStroke();
  beginShape();
  vertex(0-size*1/2, 0-size*sqrt(3)/2);
  vertex(0+size*1/2, 0-size*sqrt(3)/2);
  vertex(0+size, 0);
  vertex(0+size*1/2, 0+size*sqrt(3)/2);
  vertex(0-size*1/2, 0+size*sqrt(3)/2);
  vertex(0-size, 0);
  endShape();
}
