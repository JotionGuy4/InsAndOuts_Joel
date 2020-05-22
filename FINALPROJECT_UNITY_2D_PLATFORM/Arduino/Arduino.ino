int val = 0;
const int LED = 11;
const int buttonPin = 2;
int buttonState = 0;

void setup() {
  pinMode(LED, INPUT);
  pinMode(buttonPin, INPUT);
  Serial.begin(9600);
}

void loop() {
  val = (analogRead(A0)); 
  val = map(val, 0, 1023, 3, 255);
  Serial.write(val);
  delay(100);

  buttonState = digitalRead(buttonPin); //you forgot the digitalRead() here
  if (buttonState == HIGH) {
    Serial.write(1);
  } else {
    Serial.write(0);
  }
  delay(100);
}
