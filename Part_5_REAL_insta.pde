boolean PicLoaded = false;
boolean Grayscale = false;
boolean Effect1 = false;
boolean Effect2 = false;
boolean Effect3 = false;
int picWidth = 0;
int picHeight = 0;
PImage img;

void setup() 
{
  size(800, 480);
  background(185);
  textAlign(LEFT);
  textSize(16);
      img = loadImage("Viper.jpg");
}

void draw()
{
  println(Grayscale);
  println(Effect1);
  println(Effect2);
  println(Effect3);
  background(185);
  noStroke();
  int picStart = 0;
  int picEnd = 0;
  image(img, 0, 0);    
  
 stroke(0); //Buttons
  fill(0);
  textSize(16);
  text("Filter Effects", 675, 180);
  line(650, 0, 650, 480);
 noStroke();

 
  rect(660, 200, 130, 40, 10);
  fill(255);
  text("Flip", 695, 225);

  rect(660, 250, 130, 40, 10);
  fill(55);
  text("Invert", 695, 275);
  
  rect(660, 300, 130, 40, 10);
  fill(255);
  text("RED", 695, 325);

  rect(660, 350, 130, 40, 10);
  fill(55);
  textSize(30);
  text("RESET", 685, 380);
  noStroke();
  textSize(16);

  

    if (Grayscale == true)
    {
      
pushMatrix();
 scale(-1.0, 1.0);
 image(img,-img.width,0);
 popMatrix();
      
      
    }
    if (Effect1 == true)
    {
        filter(INVERT);
     
    }

    if (Effect2 == true)
    {
          loadPixels();
      int i = picStart;
 
      while (i < picEnd) 
      {
        color c = pixels[i];
        float r = red(c);  //average the RGB colors
        float g = green(c);
        float b = blue(c);
        pixels[i] = color(r, 0, 0);
        i = i + 1;
       
      }  
     
    
    }

    if (Effect3 == true)
    {
      loadPixels();
      Grayscale=false;
      Effect1=false;
      Effect2=false;
      Effect3=false;
      
    }

    updatePixels(); 
    redraw();
  }

//-------------------------------------

void mouseClicked() 
{
  redraw();
}

//-------------------------------------

void mousePressed()
{

  //BOUNDARIES

  if (mouseX>660 && mouseX<790 && mouseY>200 && mouseY<240)
  {
    Grayscale = true;
  }   

  if (mouseX>660 && mouseX<790 && mouseY>250 && mouseY<290)
  {
    Effect1 = true;
  } 

  if (mouseX>660 && mouseX<790 && mouseY>300 && mouseY<340)
  {
    Effect2 = true;
  }  

  if (mouseX>660 && mouseX<790 && mouseY>350 && mouseY<390)
  {
    Effect3 = true;
  } 

  redraw();
}
 
color pixelAt (int x, int y)
{
   return pixels[x * img.width + y]; 
}

int Xof(int pixelLocation)
{
    return pixelLocation / img.width;
}  

int Yof(int pixelLocation)
{
    return pixelLocation % img.width;
}  