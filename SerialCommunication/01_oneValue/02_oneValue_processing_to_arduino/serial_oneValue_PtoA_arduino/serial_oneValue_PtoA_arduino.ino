// IMA NYU Shanghai
// Interaction Lab
// This code receives one value from Processing to Arduino


char valueFromProcessing;
int ledPin = 13;
int buttonPin = 2;
int buttonState = 0;

void setup() {
  Serial.begin(9600);
  pinMode(ledPin, OUTPUT);
  pinMode(buttonPin, INPUT);
}


void loop() {
  buttonState = digitalRead(buttonPin);
  if (buttonState == HIGH) {
    digitalWrite(ledPin, HIGH);
    Serial.write(buttonState);
  } else {
    digitalWrite(ledPin, LOW);
    Serial.write(buttonState);
  }



  // to receive a value from Processing
  while (Serial.available()) {
    valueFromProcessing = Serial.read();
  }

  if (valueFromProcessing == 'H') {
    digitalWrite(ledPin, HIGH);
  } else if (valueFromProcessing == 'L') {
    digitalWrite(ledPin, LOW);
  } else {
    // something esle
  }


  // too fast communication might cause some latency in Processing
  // this delay resolves the issue.
  delay(10);
}
