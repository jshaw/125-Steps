


  
  
int BlackFader = -100;



void keyPressed() {
    TempMode = key;
    OscMessage myMessage = new OscMessage("/2/scene");
    myMessage.add("Scene A"); /* add description */
    oscP5.send(myMessage, myRemoteLocation); 
    GiveDescription();
    BlackFader = 100;
 
}

void changeScene(char input) {
    TempMode = input;
    GiveDescription();
    BlackFader = 100;
 
}

