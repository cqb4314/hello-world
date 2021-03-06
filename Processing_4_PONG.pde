PFont font;
int ballSize = 4;
float ballX;
float ballY;
float ballSpeedX;
float ballSpeedY;
int padding = 45;
int paddleH = 60;
float paddleSpeedY = 3;
float paddleLePosY;
float paddleLeSpeedY = 0;
float paddleRiPosY;
float paddleRiSpeedY = 0;
int scoreLe = 0;
int scoreRi = 0;

void setup() {
  size(480, 360);
  background(0);

  ballX = width/2;
  ballY = height/2;
  ballSpeedX = 3;
  ballSpeedY = 0;
  paddleLePosY = height/2-paddleH/2;
  paddleRiPosY = height/2-paddleH/2;

  font = loadFont("TwCenMT-Regular-48.vlw"); 
  textFont(font);
}

void draw() {
  

  
  
  
  // ball out -> reset
  if (ballX >= width || ballX <= 0 ) {
    // count score
    if ( ballX >= width ) {
      scoreLe += 1;
    } 
    else {
      scoreRi += 1;
    }

    // reset game
    ballX =  width/2;
    ballY = height/2;
    ballSpeedY = 0;
    paddleLePosY = height/2 - paddleH/2;
    paddleRiPosY = height/2 - paddleH/2;
  }

  // background
  noStroke();
  fill(0);
  rectMode(CORNER);
  rect(0, 0, width, height);

  line(padding, padding, width-padding, padding);
  line(padding, height-padding, width-padding, height-padding);
  line(width/2, padding, width/2, height-padding);

  // draw Score
  fill(255);
  textAlign(LEFT);
  text(scoreLe, padding, padding-8); 
  textAlign(RIGHT);
  text(scoreRi, width-padding, padding-8);

  // Paddle left
  paddleLePosY += paddleLeSpeedY;
  if (paddleLePosY < padding) {
    paddleLePosY = padding;
  } 
  else if (paddleLePosY+paddleH > height-padding) {
    paddleLePosY = height-padding-paddleH;
  }

  // Paddle right
  paddleRiPosY += paddleRiSpeedY;
  if (paddleRiPosY < padding) {
    paddleRiPosY = padding;
  } 
  else if (paddleRiPosY+paddleH > height-padding) {
    paddleRiPosY = height-padding-paddleH;
  }

  // draw Paddles
  noStroke();
  fill(255);
  rectMode(CORNER);
  rect(padding, paddleLePosY, 1, paddleH);
  rect(width-padding, paddleRiPosY, 1, paddleH);

  // Ball
  ballX += ballSpeedX;
  ballY += ballSpeedY;

  if ( ballY-ballSize/2 < padding || ballY+ballSize/2 > height-padding ) {
    ballSpeedY *= -1;
  }

  if (ballX-ballSize/2 <= padding && ballX+ballSize/2 > padding) {
    if (ballY >= paddleLePosY && ballY <= paddleLePosY+paddleH) {
      ballSpeedX *= -1;
      float hit = ballY - (paddleLePosY+paddleH/2);
      ballSpeedY += (hit / (paddleH/2)) *2;
    }
  }

  if (ballX+ballSize/2 >= width-padding && ballX-ballSize/2 < width-padding) {
    if (ballY >= paddleRiPosY && ballY <= paddleRiPosY+paddleH) {
      ballSpeedX *= -1; 
      float hit = ballY - (paddleRiPosY+paddleH/2);
      ballSpeedY += (hit / (paddleH/2)) *2;
    }
  }

  // ball
  noStroke();
  fill(255);
  rectMode(CENTER);
  rect(ballX, ballY, ballSize, ballSize);
  
   float Go = 0;
String time = "010";
int t;
int interval = 10;
   if(Go == 1){
     textAlign(CENTER,CENTER);
     textSize(32);
     fill(255);
     text("Game Over", 240,180); 
     Go=0;
    }

  t = interval-int(millis()/1000);
    time = nf(t , 3);
    if(t == 0){
      Go = 1;
    interval+=10;}

   text(time, width/1.75, height/4.5);
}

void keyPressed() {
  if (key == 'w' || key == 'W') {
    paddleLeSpeedY = paddleSpeedY * -1;
  } 
  else if (key == 's' || key == 'S') {
    paddleLeSpeedY = paddleSpeedY;
  } 
  else if (keyCode == UP) {
    paddleRiSpeedY = paddleSpeedY * -1;
  } 
  else if (keyCode == DOWN) {
    paddleRiSpeedY = paddleSpeedY;
  }
}


void keyReleased() {
  if (key == 'w' || key == 'W' || key == 's' || key == 'S') {
    paddleLeSpeedY = 0;
  } 
  else if (keyCode == UP || keyCode == DOWN) {
    paddleRiSpeedY = 0;
  }
  
}