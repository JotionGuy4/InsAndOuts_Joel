import processing.serial.*;
Serial myPort;

String val;
int value;
int buttonValue;
int potValue;
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
  }
  if (value == 0 || value == 1) {
    buttonValue = value;
  } else if (value >=3) {
    potValue = value;
  }
  m = map(potValue, 255, 0, padding, width-padding);
  line(padding, height/2, width-padding, height/2);
  fill(#FFDE14);
  ellipse(m, height/2, 150, 150);
  stroke(100);
  
  if(val == "HIGH") { 
    background(127, 0, 0);
  }
  if (val == "LOW") {
    background(144, 26, 0);
  }
  println("value: " + value);
  println("buttonValue: " + buttonValue);
  println("potValue: " + potValue);
}
