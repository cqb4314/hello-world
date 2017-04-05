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
vertex(233, 120);
vertex(233, 193);
vertex(160, 153);
vertex(160, 80);
endShape();
beginShape();
fill(100);
vertex(247, 120);
vertex(320, 80);
vertex(320, 153);
vertex(247, 193);
vertex(247, 120);
endShape();
beginShape();
fill(255,0,0);
vertex(240, 110);
vertex(315, 70);
vertex(240, 30);
vertex(165, 70);
vertex(240, 110);
endShape();
}