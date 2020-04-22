const int buttonPin = 2;
const int LED = 13;
const int LED3 = 11;
const int LED4 = 10;

int buttonState = 0;

void setup() {
  // put your setup code here, to run once:
  pinMode(LED, OUTPUT);
  pinMode(LED3, OUTPUT);
  pinMode(LED4, OUTPUT);
  pinMode(buttonPin, INPUT);
}

void loop() {
  // put your main code here, to run repeatedly:
  buttonState = digitalRead(buttonPin);
  delay(10);
  
  if (buttonState == HIGH) {
    digitalWrite(LED, LOW);
    delay(50);
    digitalWrite(LED, LOW);
    delay(50);
    digitalWrite(LED3, LOW);
    delay(200);
    digitalWrite(LED3, LOW);
    digitalWrite(LED4, HIGH);
    delay(200);
    digitalWrite(LED4, HIGH);
    digitalWrite(LED4, LOW);
    delay(200);
    digitalWrite(LED4, LOW);
    digitalWrite(LED4, HIGH);
    delay(200);
    digitalWrite(LED4, HIGH);
    digitalWrite(LED4, LOW);
    delay(200);
    digitalWrite(LED4, LOW);
    digitalWrite(LED3, HIGH);
    delay(50);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED3, LOW);
    delay(50);
    digitalWrite(LED3, LOW);
    digitalWrite(LED3, HIGH);
    delay(50);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED, HIGH);
    delay(50);
    digitalWrite(LED, HIGH);
    digitalWrite(LED, LOW);
    delay(50);
    digitalWrite(LED, LOW);
    digitalWrite(LED, HIGH);
    delay(50);
    digitalWrite(LED, HIGH);
    digitalWrite(LED3, LOW);
    delay(50);
    digitalWrite(LED3, LOW);
    digitalWrite(LED, LOW);
    delay(50);
    digitalWrite(LED, LOW);

  } else {
    digitalWrite(LED, LOW);
    delay(100);
    digitalWrite(LED3, LOW);
    delay(100);
    digitalWrite(LED4, HIGH);
    delay(100);
    digitalWrite(LED, HIGH);
    delay(200);
    digitalWrite(LED, HIGH);
    delay(200);
    digitalWrite(LED3, LOW);
    delay(200);
    digitalWrite(LED3, HIGH);
    digitalWrite(LED4, LOW);
    delay(200);
    digitalWrite(LED4, LOW);

    
  }
}
