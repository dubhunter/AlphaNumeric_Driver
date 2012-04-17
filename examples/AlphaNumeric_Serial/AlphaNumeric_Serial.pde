/*  Alpha-Numeric Display Driver
    Displays must be powered with at least ~6V.
    In my tests, the Arduino is powered at 9V and the display is powered by the Arduino's Vin pin.
*/
//#define FLIPDISPLAY  // Comment this out if you want the characters flipped 180 degrees

#include <AlphaNumeric_Driver.h>  // Include AlphaNumeric Display Driver Library
#define NUMBER_OF_DISPLAYS 4  // This value is currently only used by the library for the clear() command.

// --------- Pin Definitions -----------
int SDIpin = 11;
int CLKpin = 13;
int LEpin = 10;
int OEpin = 9;
// -------------------------------------

alphaNumeric myDisplay(SDIpin, CLKpin, LEpin, OEpin, NUMBER_OF_DISPLAYS);  // Create an instance of Alpha Numeric Displays

char displayString[] = "I'm now displaying a defined array of characters ";  // Static string to scroll on displays

void setup()
{
  Serial.begin(9600);
  /* This was for testing purposes
  myDisplay.scroll("####################", 0);
  Serial.println("All set");*/
}

void loop()
{
  // --------------------------
  // Begin Serial Print Example
  // --------------------------
  while(!Serial.available())
    ;
  myDisplay.print(Serial.read());
  // --------------------------
  // End Serial Print Example
  // --------------------------
  
  // --------------------------
  // Begin Scroll/On/Off/Clear Example
  // --------------------------
  /*myDisplay.scroll("Hello World ", 100);
  delay(1000);
  myDisplay.off();
  delay(1000);
  myDisplay.on();
  delay(1000);
  myDisplay.clear();
  delay(1000);
  myDisplay.scroll(displayString, 500);
  delay(1000);*/
  // --------------------------
  // End Scroll/On/Off/Clear Example
  // --------------------------
}
