PFont font;
PFont font1;
void setup() {
 size(680, 320);
 font = loadFont("Broadway-48.vlw");
 font1 = loadFont("MyriadArabic-BoldIt-48.vlw");
 textFont(font);
}
void draw() {
 background(102);
fill(255,0,0);
textFont(font);
 text("Carson Burch", 26, 30, 240, 100);
 textFont(font1);
 fill(0);
  text("Carson Burch", 126, 130, 2400, 1000);
}