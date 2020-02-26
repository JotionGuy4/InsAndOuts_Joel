//SHERK_NOT_SHREK
//TWO PLAYERS FIGHT EACH OTHER 
//GAIN POINTS 
//BALL WILL SPEED UP ONCE SOMEONE EARN POINT
//RANDOM WORDS WILL POP OUT THE SCREEN
import processing.sound.*;
SoundFile file;
String audioName = "Sherk_Battle_Music.mp3";
String path;

float x=0;
float y;
float yMove;
float xMove;
PImage Sherkface; 
int SherkSize = 69;// how big to make the ball
int paddleWidth = 12;         // size of the paddle
int paddleHeight = 100;
float playerSpeed = 20;       // how fast do the paddles move?

float SherkX, SherkY;              // position of the ball onscreen
float SherkSpeedX, SherkSpeedY;    // speed (and direction) of the ball

float p1y, p2y;                  // player paddle position
int scoreP1, scoreP2;            // current score for both players

PFont font;                      // font for showing score


void setup() {
  path = sketchPath(audioName);
  file = new SoundFile(this, path);
  file.play();
  size(800, 650);                 
  frame.setTitle("Sherk");          
  noStroke();                     
  Sherkface = loadImage("Sherkface.png");

  SherkX = width/2;      
  SherkY = height/2;
  SherkSpeedX = 4.5;       
  SherkSpeedY = 4.5;
  p1y = p2y = height/2;     
  scoreP1 = scoreP2 = 0;            
  

  font = createFont("Times New Roman", 72);   
  textFont(font, 160);
}


void draw() {
  // clear the screen every frame, draw the playing field and score
  background(0, 0, 255);
  fill(255, 100);
  rect(width/2 - 3, 0, 6, height);
  textAlign(LEFT, CENTER);
  text(scoreP1, 50,50);
  textAlign(RIGHT, CENTER);
  text(scoreP2, width-50,50);

  fill(255);
  image(Sherkface, SherkX, SherkY, SherkSize, SherkSize);
  SherkX += SherkSpeedX;
  SherkY += SherkSpeedY;  


  rect(0, p1y, paddleWidth, paddleHeight);
  rect(width-paddleWidth, p2y, paddleWidth, paddleHeight);


  p1y = mouseY;


  if (SherkY < 0 || SherkY > height) {
    SherkSpeedY *= -1.0;                
  }

  if (SherkX < 0) {                    
    scoreP2 += 1;                     
    newSherk();                      
  }
  else if (SherkX > width) {
    scoreP1 += 1;
    newSherk();
  }
  

  if (SherkX - SherkSize/2 <= paddleWidth && SherkY > p1y &&  SherkY < p1y + paddleHeight) {
    SherkSpeedX *= -1.0;
  }
  else if (SherkX + SherkSize/2 >= width-paddleWidth && SherkY > p2y && SherkY < p2y + paddleHeight) {
    SherkSpeedX *= -1.0;
  }
}


void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      p2y -= playerSpeed * 2; 
      String[] nouns = {"WHAT", "ARE", "YOU", "DOING", "TO", "MY", "CHICKEN"};
      int n = int(random(7));
      text(nouns[n], 600, 200);
    }
    else if (keyCode == DOWN) {
      p2y += playerSpeed * 2;        
      String[] nouns = {"NO", "YOU", "WILL", "LOSE", "TO", "MY", "CHICKEN"};
      int n = int(random(7));
      text(nouns[n], 600, 200);
    }
  }
}


// a custom "function" to create a new ball
// this let's us re-use code more easily
void newSherk() {
  SherkX = width/2;
  SherkY = height/2;
  SherkSpeedX = random(8.5, 8.0);    // random speed!
  SherkSpeedY = random(8.0, 8.5);
}
