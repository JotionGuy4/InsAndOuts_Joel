const int LED = 11; // LED pin 
const int buttonPin = 2;
const int potPin = A0;
int reading = 0;
int outputValue = 0;
int buttonState = 0;
int LEDState;

void setup() {
  pinMode(LED, OUTPUT);
  pinMode (potPin, INPUT); //initialize LED pin as digital output
  //note: no need to initialize analog inputs as those pins can only be inputs
  //pinMode(buttonPin, INPUT);
  //pinMode(ledPin, OUTPUT);
  Serial.begin(9600);
}

void loop() {
  reading = analogRead(potPin); // reads pot 0 to 1023
  reading = map(reading, 0, 1023, 0, 255);
  //analogWrite (LED, reading/4); // reduces value to match PWN output range 0-255
  Serial.write(reading);

 
    if(LEDState == '1'){
      digitalWrite(LED, HIGH);
    }
    if(LEDState == '0') {
      digitalWrite(LED, LOW);
    }
 

  buttonState = (buttonPin);
  
  if (buttonState == HIGH) {
    Serial.write(2);
    digitalWrite(LED, HIGH);
    
  } else {
    Serial.write(1);
    digitalWrite(LED, LOW); 
  }
  delay(100);

}
