import processing.serial.*;

Serial myPort;  // The serial port
int lf = 10;    // Linefeed in ASCII

float value1;
float value2;
String myString = null;
void serialEvent (Serial p) {
    myString = myPort.readStringUntil(lf);
    if (myString != null) {

      myString = trim(myString);
      String str = myString.substring(1,3);
      if ( str.equals("A0")) {
        value1 = float(myString.substring(4,myString.length()-1))/10;
      }
       if ( str.equals("A1")) {
        value2 = map(float(myString.substring(4,myString.length()-1)),0,1023,0,height);
      }

    }
}

