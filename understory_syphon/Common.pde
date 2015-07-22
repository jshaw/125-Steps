


  
  
int BlackFader = -100;

void keyPressed() {
    tempScene = sceneMap.get(Character.toString(key));
    if (tempScene == null) {
      println("No scene found for that character: " + key);
      return;
    }
    
    OscMessage myMessage = new OscMessage("/2/scene");
    myMessage.add("Scene A"); /* add description */
    oscP5.send(myMessage, myRemoteLocation); 
    println(tempScene.description);
    BlackFader = 100;
}

abstract class Scene {
  String description;
  Scene(String description) {
    this.description = description;
  }
  Scene() {
    this.description = "No description specified";
  }
  abstract void setup();
  abstract void draw();
}

void changeScene(Scene s) {
    tempScene = s;
    //println(s.getDescription());
    BlackFader = 100;
}

