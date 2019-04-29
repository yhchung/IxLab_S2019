// IMA NYU Shanghai
// Interaction Lab
// For receiving multiple values from Arduino to Processing

/*
 * Based on the readStringUntil() example by Tom Igoe
 * https://processing.org/reference/libraries/serial/Serial_readStringUntil_.html
 */

import processing.serial.*;

String myString = null;
Serial myPort;

int NUM_OF_AtoP_VALUES = 2;   /** YOU MUST CHANGE THIS ACCORDING TO YOUR PROJECT **/
int[] sensorValues;      /** this array stores values from Arduino **/

int NUM_OF_PtoA_VALUES = 2;
int values[] = new int[NUM_OF_PtoA_VALUES];

void setup() {
  size(500, 500);
  background(0);
  setupSerial();
}

void draw() {
  background(0);
  
  //updateSerial();
  //printArray(sensorValues);

  //// use like this: sensorValues[0]
  //float posX = map( sensorValues[0], 0, 1023, 0, width );
  //float posY = map( sensorValues[1], 0, 1023, 0, height );
  //ellipse(posX, posY, 30, 30);
  
  
  // set values to arduino like this: values[0]
  values[0] = mouseX;
  values[1] = mouseY;
  
  sendSerialData();
  echoSerialData(200);
}

void setupSerial() {
  printArray(Serial.list());
  myPort = new Serial(this, Serial.list()[ 3 ], 9600);
  // find the port "/dev/cu.usbmodem----" or "/dev/tty.usbmodem----" 

  myPort.clear();
  // Throw out the first reading,
  // in case we started reading in the middle of a string from the sender.
  myString = myPort.readStringUntil( 10 );  // 10 = '\n'  Linefeed in ASCII
  myString = null;

  sensorValues = new int[NUM_OF_AtoP_VALUES];
}

void updateSerial() {
  while (myPort.available() > 0) {
    myString = myPort.readStringUntil( 10 ); // 10 = '\n'  Linefeed in ASCII
    if (myString != null) {
      String[] serialInArray = split(trim(myString), ",");
      if (serialInArray.length == NUM_OF_AtoP_VALUES) {
        for (int i=0; i<serialInArray.length; i++) {
          sensorValues[i] = int(serialInArray[i]);
        }
      }
    }
  }
}

void sendSerialData() {
  String data = "";
  for (int i=0; i<values.length; i++) {
    data += values[i];
    //if i is less than the index number of the last element in the values array
    if (i < values.length-1) {
      data += ","; // add splitter character "," between each values element
    } 
    //if it is the last element in the values array
    else {
      data += "n"; // add the end of data character "n"
    }
  }
  //write to Arduino
  myPort.write(data);
}


void echoSerialData(int frequency) {
  //write character 'e' at the given frequency
  //to request Arduino to send back the values array
  if (frameCount % frequency == 0) myPort.write('e');

  String incomingBytes = "";
  while (myPort.available() > 0) {
    //add on all the characters received from the Arduino to the incomingBytes string
    incomingBytes += char(myPort.read());
  }
  //print what Arduino sent back to Processing
  print( incomingBytes );
}
