int s = 20;
strokeWeight(4);
size(600, 600);
rect(0, 0, width/2, height/2);
rect(width/2, 0, width/2, height/2);
rect(0, height/2, width/2, height/2);
rect(width/2, height/2, width/2, height/2);

// top left
for(int i=1; i<=14; i++) {
  line(s*i, 0, s*i, width/2);
}

// top right
for(int i=1; i<=14; i++) {
  line(width/2, s*i, width, s*i);
}

// bottom left
for(int i=1; i<=15; i++) {
  line(0, height/2 + s*i, s*i, width/2);
  line(s*i, height, width/2, height/2 + s*i);
}

// bottom right, 
for(int i=0; i<=15; i++) {
  line(width/2+s*i, height/2, width+s*i, height);
  line(width/2, height/2 + s*i, width - s*i, height);
}
