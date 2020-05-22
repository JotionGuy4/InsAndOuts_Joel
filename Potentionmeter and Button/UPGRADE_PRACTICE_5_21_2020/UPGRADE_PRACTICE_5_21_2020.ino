int val;
const int LED = 11;
const int buttonPin = 2;
int buttonState = 0;

void setup() {
  pinMode(LED, INPUT);
  pinMode(buttonPin, INPUT);
  Serial.begin(9600);
}

void loop() {
  val = (analogRead(A0)); //don't divide by 4 AND map
  val = map(val, 0, 1023, 3, 255);
  Serial.write(val);
  delay(100);

  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH) {
    Serial.write(HIGH);
  } else {
    Serial.write(LOW);
  }
  delay(100);
}
