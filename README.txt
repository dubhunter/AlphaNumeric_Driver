This is a very basic library for SparkFun's Alpha-Numeric Display Driver (http://www.sparkfun.com/products/10103).

License: Creative Commons BY-SA 3.0 (http://creativecommons.org/licenses/by-nc-sa/3.0/) - Use it however you'd like, but attribution would be great! I'd love to hear how you're using the library (jim@sparkfun.com). Definitely let me know if you've added to the library, there's room for improvement... If you encounter any bugs, please add them to the issues tab in the git repository (https://github.com/jimbloom/alphanumericDisplayDriver/issues).

Install: After extracting the library place the 'AlphaNumeric_Driver' folder into your Arduino 'libraries' folder. On my standard windows install this is at C:\Documents and Settings\myname\My Documents\Arduino\libraries. After copying the library, if you have Arduino already open, you'll need to close and re-open it.

Using the library: After a successful install you should see 'AlphaNumeric_Driver' under the 'Sketch->Import Library' menu in Arduino.  Adding the library to your blank sketch should add the following line to your code:

#include <AlphaNumeric_Driver.h>

To use the display you have to first create an instance of it.  This can be done using the 'alphaNumeric(SDIpin, CLKpin, LEpin, OEpin, displayNumber)' command. For example:

#define NUMBER_OF_DISPLAYS 4
int SDIpin = 11;
int CLKpin = 13;
int LEpin = 10;
int OEpin = 9;
alphaNumeric myDisplay(SDIpin, CLKpin, LEpin, OEpin, NUMBER_OF_DISPLAYS);

Creates an alphanumeric display called myDisplay with predefined pin numbers and a set number of displays.  SDIpin, CLKpin, LEpin and OEpin must be digital pins.

Available functions:
* on(); - Turns all connected displays on.
* off(); - Turns all connected displays off.
* scroll(char * string, int time); - Takes a string of characters and scrolls it in one direction. 'time' is the amount of time between character shifts.
* clear(); - Clears the display. Dependent on displayNumber.
* print(char toPrint); - Takes an ASCII character and prints it on the first connected display. All other characters currently displayed will be shifted one display.
* shift16(uint16_t data); - Shifts a 16-bit value into the display. Don't use this function to print ASCII characters. Only use it if you want direct control over each segment.

Flipping the display: If you want to flip the displays over 180degrees stick the following code at the top of your program:

#define FLIPDISPLAY

It must go before the #include '<AlphaNumeric_Driver.h>' code.

Let me know how it works for you, or if you find any bugs!
-Jim Lindblom
jim@sparkfun.com
