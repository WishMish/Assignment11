class ButtonHeld {
  boolean held;
  float x, y;
  float w, h;
  
  ButtonHeld(float x, float y, float w, float h) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
  }
  
  //checks if the mouse is inside the rectangle, but I don't understand why 
  //it sets held not equal to held.
  void checkHeld() {
    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h && mousePressed) {
      held = true;
    } else {
      held = false;
    }
  }
  
  //checks if held is true, fills 240 if not fills 150
  //we want 'held' to mean the mouse is constantly pressed
  void display() {
    if (held) {
      fill(240);
    } else {
      fill(150);
    }
    rect(x, y, w, h);
  }
  
  //don't fully understand what this does
  boolean getButtonStatus() {
    return held;
  }
}

//class Button {
//  boolean pressed;
//  float x, y;
//  float w, h;
  
//  Button(float x, float y, float w, float h) {
//    this.x = x;
//    this.y = y;
//    this.w = w;
//    this.h = h;
//  }
  
//  void checkPressed() {
//    if (mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
//      pressed = !pressed;
//    }
//  }
  
//  void display() {
//    if (pressed) {
//      fill(240);
//    } else {
//      fill(150);
//    }
//    rect(x, y, w, h);
//  }
  
//  boolean getButtonStatus() {
//    return pressed;
//  }
//}
