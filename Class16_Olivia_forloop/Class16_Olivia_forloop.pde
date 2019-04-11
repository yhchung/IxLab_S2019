/* 
 Author: Olivia
 Source: https://wp.nyu.edu/shanghai-ima-documentation/author/mz2375/
 Date: March 31, 2019
 
 Modified by Young
 Date: April 9, 2019
 
 */

size(600, 800);
background(0, 0, 35);
fill(#56121e);
ellipse(150, 116, 140, 140);
fill(0, 0, 0);
ellipse(150, 120, 140, 140);
fill(255, 255, 240);
ellipse(150, 620, 200, 200);
fill(255, 215, 0);
noStroke();
rect(140, 475, 12, 60);
rect(128, 495, 36, 12);

// right circles
fill(#56121e);
stroke(255, 215, 0);
for (int i = 0; i<8; i++) {
  ellipse(520, 400, 400-i*50, 400-i*50);
}

//ellipse(520, 400, 400, 400);
//ellipse(520, 400, 350, 350);
//ellipse(520, 400, 300, 300);
//ellipse(520, 400, 250, 250);
//ellipse(520, 400, 200, 200);
//ellipse(520, 400, 150, 150);
//ellipse(520, 400, 100, 100);
//ellipse(520, 400, 50, 50);
