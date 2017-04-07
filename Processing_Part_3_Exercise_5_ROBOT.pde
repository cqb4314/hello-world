int x = 0;
PShape s;

void setup()
{
  size(480, 220);
  smooth();
}

void draw()
{
   background(204);
s =  createShape();
s.beginShape();
s.fill(0);
s.vertex(160, 80);
s.vertex(220, 160);
s.vertex(280, 160);
s.vertex(340, 80);
s.vertex(160, 80);

s.endShape();
 
 if (keyPressed && (key == CODED)) { // If it’s a coded key
 if (keyCode == LEFT) { // If it’s the left arrow
 x--;
 } else if (keyCode == RIGHT) { // If it’s the right arrow
 x++;
 }
 }
 shape(s,x,0);
 
beginShape();
fill(255,0,0);
vertex(220, 80);
vertex(280, 80);
vertex(280, 40);
vertex(270, 10);
vertex(260, 40);
vertex(240, 40);
vertex(230, 10);
vertex(220, 40);
vertex(220, 80);
 if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
 fill(0,128,0);
  if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
 vertex(220, 80);
  if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
vertex(280, 80);
 if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
vertex(280, 40);
 if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
vertex(270, 10); 
if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
vertex(260, 40);
 if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
vertex(240, 40);
 if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
vertex(230, 10);
 if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
vertex(220, 40);
 if (keyPressed)
 if ((key == 'g') || (key == 'G')) 
vertex(220, 80);

endShape();
beginShape();
fill(100);
vertex(220, 160);
vertex(240, 160);
vertex(240, 220);
vertex(200, 220);
vertex(200, 200);
vertex(220, 200);
vertex(220, 160);
 if (keyPressed)
 if ((key == 'h') || (key == 'H')) 
fill(148,0,211);
 if (keyPressed)
 if ((key == 'h') || (key == 'H')) 
 vertex(220, 160);
  if (keyPressed)
 if ((key == 'h') || (key == 'H')) 
vertex(240, 160);
 if (keyPressed)
 if ((key == 'h') || (key == 'H')) 
vertex(240, 220);
 if (keyPressed)
 if ((key == 'h') || (key == 'H')) 
vertex(200, 220);
 if (keyPressed)
 if ((key == 'h') || (key == 'H')) 
vertex(200, 200);
 if (keyPressed)
 if ((key == 'h') || (key == 'H')) 
vertex(220, 200);
 if (keyPressed)
 if ((key == 'h') || (key == 'H')) 
vertex(220, 160);

endShape();
beginShape();
fill(100);
vertex(260, 160);
vertex(280, 160);
vertex(280, 200);
vertex(300, 200);
vertex(300, 220);
vertex(260, 220);
vertex(260, 160);
endShape();
fill(0);

 ellipse(mouseX, mouseY, 7, 7);
 ellipse(mouseX + 25, mouseY, 7, 7);
}