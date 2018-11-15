// code 1 FA18
// bryan ma

// visualizing key presses 2

// see previous sketch w11_05_visualizingInput2 for instructions.



int x;
int y;

int dx = 20;
int dy = 20;

int ydir = 1; 
int xdir = 1;

int size = 100; 

boolean newKeyShape = false;

int numChars = 26;
color[] colors = new color[numChars];

void setup() {
  frameRate(30);
  noStroke();
  background(0);
  size(800, 800);
  colorMode(HSB, numChars);
  for(int i = 0; i < numChars; i++){
    colors[i] = color(i, numChars, numChars, i + 15);
  }
}

void draw() {
  if (newKeyShape) {
    ellipse(x, y, size, size);
    fill(numChars/2);
    newKeyShape = false;
  }
}

void keyPressed() {
  setPosition();
  newKeyShape = true;
  
  if((key >= 'A' && key <= 'Z') || (key >= 'a' && key <= 'z')) {
    int keyIndex;
    if(key <= 'Z') {
      keyIndex = key-'A';
      fill(colors[keyIndex]);
    } else {
      keyIndex = key-'a';
      fill(colors[keyIndex]);
    }
  } else {
    fill(0);
  }
}

void setPosition() {
  x = x + ( dx*xdir);
  y = y + ( dy*ydir);
  
  //if( x > width - size){
  //  xdir *= -1;
  //}
  
  //if( y > height - size){
  //  ydir *= -1;
  //}
}
