
int BlackFader = -100;

void keyPressed() {
    TempMode = key;
    GiveDescription();
    BlackFader = 100;
 
}

interface Module {
  void setup();
  void draw();
}
