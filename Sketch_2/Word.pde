class Word {
  String theWord;
  float x, y;
  
  Word(float x, float y, String text) {
    theWord = text;
    this.x = x;
    this.y = y;
  }
  
  void display() {
    //float b;
    //b = this.y;
    fill(0, 200, 0);
    text(theWord, x, y);
  }
}
