int potPin = 2;
int potVal = 0;    
int yellowLed = 12;
int green2Led = 9;
int greenLed = 10;
int yellow2Led = 11;
int redLed = 8;

void setup() {
  
  Serial.begin(9600); 
 
  pinMode(potPin, INPUT);
  
  pinMode(yellowLed, OUTPUT);
  pinMode(yellow2Led, OUTPUT);
  pinMode(greenLed, OUTPUT);
  pinMode(green2Led, OUTPUT);
  pinMode(redLed, OUTPUT);
}

void loop() {
  potVal = analogRead(potPin);    
  Serial.println(potVal);

  if(potVal > 0 && potVal < 205)
  {
    digitalWrite(yellowLed, HIGH);
    digitalWrite(yellow2Led, LOW);
    digitalWrite(greenLed, LOW);
    digitalWrite(green2Led, LOW);
    digitalWrite(redLed, LOW);

  }
  //Turn on the yellow led if the value is between 205 and 410
  if(potVal > 205 && potVal < 410)
  {
    digitalWrite(yellowLed, LOW);
    digitalWrite(yellow2Led, HIGH);
    digitalWrite(greenLed, LOW);
    digitalWrite(green2Led, LOW);
    digitalWrite(redLed, LOW);

  }
 
  if(potVal > 410 && potVal < 616)
  {
    digitalWrite(yellowLed, LOW);
    digitalWrite(yellow2Led, LOW);
    digitalWrite(greenLed, HIGH);
    digitalWrite(green2Led, LOW);
    digitalWrite(redLed, LOW);

  }
  
  if(potVal > 616 && potVal < 822)
  {
    digitalWrite(yellowLed, LOW);
    digitalWrite(yellow2Led, LOW);
    digitalWrite(greenLed, LOW);
    digitalWrite(green2Led, HIGH);
    digitalWrite(redLed, LOW);

  }
  
  if(potVal > 822 && potVal < 1028)
  {
    digitalWrite(yellowLed, LOW);
    digitalWrite(yellow2Led, LOW);
    digitalWrite(greenLed, LOW);
    digitalWrite(green2Led, LOW);
    digitalWrite(redLed, HIGH);


  }
}
