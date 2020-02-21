//WHICH_ONE
//CLICK = RANDOM COLOR
//MOVE UP RIGHT = INSANE
// CLICK = STROKE
boolean button = false;
float a = 0;
float j = 0.4;
float r = 255;
float g = 255;
float b = 255;
int z = 60;
int y = 60;
int x = 110;
int w = 85;
int v = 75;
int u = 70;
void setup(){
  size (700, 700);
  rectMode(CENTER);
  background(155);
}

void draw(){
  background (255);
  int x = 50;
  while (x<width){
    triangle(int(random(1, 400)), height+2, 75, width/2, x, x);
    x+=100;
  }
  int y = 50;
  while (y<10){
    triangle(width+2, int(random(1, 150)), 75, height, height/2, y);
    y+=100;
  }
  
  if (mouseX < 100 && mouseY < 100) {
  for(int i=0; i<=height; i+=50){
     fill(r, g, b);
     line(j, 1, i, height/2);
     j = j + 0.1;
  }
  for(int i=0; i<=height; i+=50){
     float r = random(50, 180);
     fill(r, g, b);
     stroke(r*0.73);
     triangle(i, j, width/2, 0.2+r,int(random(1, 400)), i);
     j = j + 1;
  }
  for(int i=0; i<=height; i+=50){
     float r = random(50, 220);
     fill(r, g, b);
     stroke(r*0.93);
     fill(r, g, b);
     triangle(width/2, int(random(1, 200)), 0, j, 0.09+i+r, int(random(1, 150)));
     j = j + 1;
  }
  for(int i=0; i<=height; i+=50){
    float r = random(50, 320);
    fill(r, g, b);
    stroke(r*0.36);
    triangle(0, i+r, height/2, j, i+r, height/3);
    j = j + 1;
  }
  fill(195);
  triangle(z, y, x, w, v, u);
  }
  else if (mousePressed) {
  background(255);
  for(int i=0; i<=width; i+=50){
    triangle(i, y, i, height, i, i);
    y+=100;
  }
  for(int i=0; i<=height; i+=50){
     fill(r, g, b);
     line(a, i, width, i);
     a = a - 0.1;
  }
  for(int i=0; i<=height; i+=50){
     float b = random(20, 140);
     fill(r, g, b);
     strokeWeight(2);
     line(i, a, width/2, i);
     a = a - 0.1;
  }
  for(int i=0; i<=height; i+=50){
     float b = random(20, 140);
     fill(r, g ,b);
     strokeWeight(2);
     line(a, i, width, i);
     a = a - 0.1;
  }
  for(int i=0; i<=height; i+=50){
    float b = random(20, 140);
    fill(r, g, b);
    strokeWeight(3);
    line(a, width, height, i);
    a = a - 0.1;
  }
  }

}

void mousePressed() {
  if (mouseX > z && mouseX < z + y*2 && mouseY > x && mouseY < v + u+3);
    button = !button;
  r = random (255);
  g = random (255);
  b = random (255);
}
