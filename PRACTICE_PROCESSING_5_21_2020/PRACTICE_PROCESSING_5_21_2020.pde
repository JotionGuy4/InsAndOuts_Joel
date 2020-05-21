import processing.serial.*;
Serial myPort;

int value;
int padding = 100;
float m;

void setup() {
  size(1440, 900);
  //  println("Available serial ports:");
  //  println(Serial.list());
  myPort = new Serial(this, Serial.list()[2], 9600);
  smooth();
  strokeWeight(3);
  stroke(100);
}

void draw() {
  background(#FFFFF0);
  if (myPort.available() > 0) {
    value = myPort.read();
    println(value);
    m = map(value, 255, 0, padding, width-padding);
  }
  line(padding, height/2, width-padding, height/2);
  fill(#FFDE14);
  ellipse(m, height/2, 150, 150);
  stroke(100);
  
  if (value == 1) {
    fill(255, 0, 0);
  }
  
}
