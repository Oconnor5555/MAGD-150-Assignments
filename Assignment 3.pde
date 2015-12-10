
void setup(){
  size(1300, 820);
  background(500, 500, 500);
  
  //light
  stroke(0, 0, 0);
  fill(500, 500, 500);
  rectMode(CENTER);
  rect(650, 67, 50, 40);
  
  fill(0, 0, 500);
  quad(650, 47, 674, 54, 675, 47, 650, 40);
  
  fill(0, 0, 500);
  quad(625, 54, 650, 47, 650, 40, 625, 47);
  
  
  
  //roof
  stroke(0, 0, 500);
  fill(0, 0, 500);
  beginShape(TRIANGLE_FAN);
    vertex(650, 55);
    vertex(500, 100);
    vertex(650, 100);
    vertex(800, 100);
    endShape(CLOSE);
    
  //bottom
  stroke(0, 0, 500);
  fill(0, 0, 500);
  beginShape(TRIANGLE_FAN);
    vertex(650, 650);
    vertex(500, 600);
    vertex(650, 600);
    vertex(800, 600);
    endShape(CLOSE);
    
  //box
  stroke(0, 0, 500);
  fill(0, 0, 500);
  rectMode(CENTER);
  rect(650, 350, 300, 498);
  
  //middle line
  stroke(0, 0, 0);
  line(650, 55, 650, 650);
  
  //roof line 1
  stroke(0, 0, 0);
  line(650, 80, 500, 122);
  //roof line 2
  stroke(0, 0, 0);
  line(650, 80, 800, 122);
  
  //bottom line 1
  stroke(0, 0, 0);
  line(650, 638, 500, 589);
  //bottom line 2
  stroke(0, 0, 0);
  line(650, 638, 800, 589);
  
  //wood panel 1
  fill(0, 0, 500);
  quad(510, 582, 640, 624, 640, 95, 510, 130);
  //wood panel 2
  fill(0, 0, 500);
  quad(660, 624, 790, 582, 790, 130, 660, 95);
  
  //t panel 1
  fill(100);
  quad(510, 148, 639, 120, 640, 84, 510, 120);
  //t panel 2
  fill(100);
  quad(790, 148, 661, 120, 661, 84, 790, 120);
  
  //window 1
  fill(500, 500, 500);
  quad(510, 255, 639, 245, 640, 142, 510, 165);
  //window 2
  fill(500, 500, 500);
  quad(790, 255, 660, 245, 660, 142, 790, 165);
  
  //square 1
  fill(0, 0, 500);
  quad(510, 350, 639, 350, 640, 260, 510, 270);
  //square 2
  fill(0, 0, 500);
  quad(510, 450, 639, 465, 640, 367, 510, 365);
  //square 3
  fill(0, 0, 500);
  quad(510, 550, 639, 583, 640, 484, 510, 465);
  
  //square 4
  fill(0, 0, 500);
  quad(661, 350, 790, 350, 790, 270, 661, 260);
  //square 5
  fill(0, 0, 500);
  quad(790, 450, 661, 465, 661, 367, 790, 365);
  //square 6
  fill(0, 0, 500);
  quad(790, 550, 661, 583, 661, 484, 790, 465);
  
  //seperator 1
  fill(0, 0, 500);
  quad(560, 598, 579, 604, 579, 133, 560, 138);
  //door stop 1
  fill(0, 0, 500);
  quad(566, 600, 572, 602, 572, 135, 566, 136);
  
  //seperator 2
  fill(0, 0, 500);
  quad(738, 598, 720, 604, 720, 133, 738, 137);
  //door stop 2
  fill(0, 0, 500);
  quad(732, 600, 726, 602, 726, 135, 732, 136);
  
  //sign
  fill(205);
  quad(515, 346, 555, 346, 555, 272, 515, 274);
  
  
  
  
  //arc shapes
  arc(100, 700, 50, 50, 0, HALF_PI+HALF_PI);
  arc(1200, 700, 50, 50, 0, HALF_PI+HALF_PI);
  
  //rectangle additions
  rectMode(CENTER);
  rect(100, 350, 50, 700);
  rectMode(CENTER);
  rect(1200, 350, 50, 700);
  
  //ellipse additions
  ellipse(40,50, 50, 200);
  ellipse(1260,50, 50, 200);
  
  //triangle additions
  triangle(10, 300, 10, 200, 70, 300);
  triangle(1290, 300, 1290, 200, 1230, 300);
  
  //points
  point(200, 200);
  point(1100, 200);
  point(200, 205);
  point(1100, 205);
 
}
//the triangles following the drawing
void draw(){
  rect(100, mouseY, 30, 30);
  rect(1200, mouseY, 30, 30);
  

}
void mousePressed(){
  ellipse(mouseX, mouseY, 10, 10);
}

void keyPressed(){
 rect(mouseX, mouseY, 20, 20);
}
