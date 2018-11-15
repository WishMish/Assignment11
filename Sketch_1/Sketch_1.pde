// code 1 FA 18
// bryan ma

// this sketch creates a Button class that changes a 'pressed' boolean
// from false to true, and vice versa, when clicked on. pressing once
// is all that's needed to change the state. 

// create a different Button class that also has a 'pressed' boolean, 
// but unlike the other Button, the mouse needs to be held on the button
// in order to set it to true. releasing the mouse button or moving it off
// the button returns the boolean to false.

// finally, check in the sketch for the state of the buttons (see the 
// getButtonStatus() method for an example of how to access their state
// and create some kind of visual effect whenever the buttons are active. 


ButtonHeld button;

void setup() {
  size(300, 300);
  button = new ButtonHeld(120, 95, 100, 30);
}

void draw() {
  background(100);
  button.display();
  button.checkHeld();
}
