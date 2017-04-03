void setup()
{
  size(480, 220);
  smooth();
}

void draw()
{
  beginShape();
  fill(0);
vertex(160, 80);
vertex(220, 160);
vertex(280, 160);
vertex(340, 80);
vertex(160, 80);
endShape();
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
ellipse(238,55, 7,7);
ellipse(263,55, 7,7);
}