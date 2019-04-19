import processing.serial.*;

Serial myPort;
int PORT_INDEX = 3;
int valueFromArduino;

int x = 0;
int y = 0;

int positionX = 300; 
int positionY = 300;

int xspeed = 0;
boolean light = false;

void setup() {
  size(500, 500);
  pixelDensity(2);
  background(175, 238, 238);

  printArray(Serial.list());
  // this prints out the list of all available serial ports on your computer.

  myPort = new Serial(this, Serial.list()[ PORT_INDEX ], 9600);
}

void draw() {
  background(255*mouseX/width, 255*mouseY/height, 255);

  // Back Cloud
  drawCloud(x, y, 0, 0);
  x = x + xspeed;

  drawBase();
  drawPlatform();
  drawAntenna();

  // Front Cloud
  drawCloud(x, y, 300, 180);

  // to read the value from Arduino
  while ( myPort.available() > 0) {
    valueFromArduino = myPort.read();
  }
  println(valueFromArduino);//This prints out the values from Arduino

  if (valueFromArduino == 1 || mousePressed) {
    light = true;
    myPort.write('H');
  } else {
    light = false;
    myPort.write('L');
  }
}

void drawAntenna () {
  strokeWeight(3);
  stroke(70, 130, 180);
  ellipse(249.5, 125, 10, 10);
  line(249.5, 130, 249.5, 145);
  ellipse(249.5, 100, 10, 10);
  line(249.5, 105, 249.5, 120);

  ellipse(249.5, 75, 10, 10);
  line(249.5, 80, 249.5, 95);

  line(249.5, 50, 249.5, 70);
}

void drawPlatform() {

  // red
  strokeWeight(3);
  stroke(70, 130, 180);

  if (light) {
    fill(239, 65, 53);
  } else {
    fill(245, 245, 245);
  }
  rect(193.75, 230, 112.5, 30, 0, 0, 10, 10);

  noStroke();
  fill(220, 220, 220);
  rect(194.9, 230, 110, 10);

  // white
  strokeWeight(3);
  stroke(70, 130, 180);
  if (light) {
    fill(255, 255, 255);
  } else {
    fill(245, 245, 245);
  }
  rect(173.75, 200, 152.5, 30, 0, 0, 10, 10);

  noStroke();
  fill(220, 220, 220);
  rect(174.9, 200, 150, 10);

  // blue
  strokeWeight(3);
  stroke(70, 130, 180);
  if (light) {
    fill(0, 85, 164);
  } else {
    fill(245, 245, 245);
  }
  rect(153.75, 170, 192.5, 30, 0, 0, 10, 10);

  noStroke();
  fill(220, 220, 220);
  rect(155.5, 171.5, 189, 8);

  strokeWeight(3);
  stroke(70, 130, 180);
  fill(245, 245, 245);
  rect(202.5, 145, 95, 25);

  noStroke();
  fill(220, 220, 220);
  rect(204.5, 147, 91.5, 8);
}

void drawCloud(int x, int y, int positionX, int positionY) {
  pushMatrix();
  fill(255);
  translate (positionX, positionY);
  translate (x, y);
  beginShape();
  vertex(50, 180);
  bezierVertex(25, 150, 80, 120, 132, 150);
  bezierVertex(150, 115, 200, 135, 200, 160);
  bezierVertex(250, 150, 250, 235, 170, 220);
  bezierVertex(150, 250, 80, 255, 70, 220);
  bezierVertex(5, 230, 25, 170, 50, 180);
  endShape();
  popMatrix();
}

void drawBase() {
  noStroke();

  // light part

  fill(245, 245, 245);
  rect(212.5, 260, 75, 30);
  fill(220, 220, 220);
  rect(212.5, 260, 75, 10);
  // end of light part

  strokeWeight(3);
  stroke(70, 130, 180);
  line(212.5, 290, 212.5, 260);
  line(287.5, 290, 287.5, 260);

  fill(245, 245, 245);
  rect(175, 290, 150, 210);

  fill(220, 220, 220);
  noStroke();
  triangle(177.5, 292, 323.5, 292, 323.5, 450);
}

// Cloud Movement
void keyPressed() {
  if (key == CODED) {
    if (keyCode == RIGHT) {
      xspeed = 3;
    }
  } 
  if (keyCode == LEFT) {
    xspeed = -3;
  } else if (keyCode == SHIFT) {
    xspeed = 0;
  }
}
