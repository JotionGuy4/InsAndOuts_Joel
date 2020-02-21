//"MAN WITH THE BOX"
//IF THE SQUARE GO TO THE RIGHT TOP, THEN YOU HAVE TO START AGAIN
//IF THE STAND GOING DOWN LEFT, THEN YOU HAVE TO AGAIN
//IF THERE IS A BLUE SQUARE IN THE MIDDLE RIGHT, THEN IT
//HOLD MOUSE, AND THE TEXT PLUS OBJECT WILL, IF YOU PUT THE MOUSE ON THE BLUE BOX, AND THE
//FLYING BOX WILL TECT SOMETHING. ALSO, THEIR SPEED WILL MOVE FASTER IF YOU HOLD THE MOUSE
float x=0;
float y;
float yMove;
float xMove;
int move = 5;
int jump = 3;
float r = 255;
float g = 255;
float b = 255;


void setup(){
  size(700, 700);
  xMove = width/2;
  yMove = height/2;
  background(r, g, b);
}

void draw(){
  if(mousePressed){
  fill(r, g, b);
  background(255);
  fill(r, g , b);
  strokeWeight(5);
  text( "FLYING", y, x, y, x);
  text( "STAND", x, y, x);
  textSize(32);
  fill(r, g, b);
  square(x, y, x);
  fill(r, g, b);
  triangle(x, y, x, y, x, y);
  move = move * 8;
  x = x + xMove;
  y = y + yMove;
  if (x > width || x < 0){
      xMove = -xMove;
   }
  if (y > height || y < 0){
      yMove = -yMove;
     
   }
   else if (mousePressed == mouseY > height/2) {
    fill(255, 0, 0);
    text( "HELLO, MY NAME IS SQUARE. NICE TO MEET YOU AND GOODBYE", x, y, y, x);
    x = x + xMove;
    y = y + yMove;
    if (x > width || x < 0){
      xMove = -xMove;
    }
    if (y > height || y < 0){
      yMove = -yMove;
    }
    
    }
    else {
    fill(0, 255, 255);
    rect(width/2, height/2, 100, 100);
    }
}
   
  
  
   

}

void mousePressed() {
  r = random (255);
  g = random (255);
  b = random (255);
  yMove = random(-5, 5);
  xMove = random(-5, 5);
}
