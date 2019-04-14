float angle = 0f;

void setup()
{
  size(600,600);
  frameRate(60);
  colorMode(HSB,255);
}

void draw()
{
  background(0);
  translate(mouseX,mouseY);
  float sizeScale = 0.8 - sqrt((mouseX-width/2)*(mouseX-width/2)+(mouseY-height/2)*(mouseY-height/2))/1000f;
  for(int i=0;i<60;i++)
  {
    rotate(radians(1.8 + angle * (1 - i/500)));
    
    hexagon(map(abs(i-(float)mouseX/width*60f+(float)mouseY/height*60f),0,59,0,255),
            255,
            255,
            (240-4*i)*sizeScale);
  }
  angle += 0.08;
}

void hexagon(float r,float g,float b,float size)
{
  fill(r,g,b);
  noStroke();
  beginShape();
  vertex(0-size*1/2,0-size*sqrt(3)/2);
  vertex(0+size*1/2,0-size*sqrt(3)/2);
  vertex(0+size,0);
  vertex(0+size*1/2,0+size*sqrt(3)/2);
  vertex(0-size*1/2,0+size*sqrt(3)/2);
  vertex(0-size,0);
  endShape();
}
