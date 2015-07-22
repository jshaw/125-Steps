import codeanticode.syphon.*;

class Syphon {
 
  SyphonServer server;
 
  PApplet p;
 
  Syphon(PApplet p, String name){
    this.p = p;
    server = new SyphonServer(p, name);
  }
 
  void send(){
     send(p.g);
  }
 
  void send(PGraphics g){
     server.sendImage(g);
  }  
 
}

Syphon syphon;

import oscP5.*;
import netP5.*;
  
OscP5 oscP5;
NetAddress myRemoteLocation;


import toxi.math.*;
import toxi.color.*;
import krister.Ess.*;

import java.util.*;

import megamu.mesh.*;


import processing.opengl.*;
import fisica.*;


FWorld world;
SyphonServer server;




//char Mode='c';

Scene scene;
Scene tempScene;

//char TempMode;// = Mode;


int oscX,oscY,fader1=10,fader2=10,fader3=10,fader4=10,fader5=10,fader6=10;
float normX, normY;



void oscEvent(OscMessage theOscMessage) {
  
  String addr = theOscMessage.addrPattern();
  println(addr);
  /* print the address pattern and the typetag of the received OscMessage */

  if(theOscMessage.checkAddrPattern("/2/chooser/10/1")==true) {
      changeScene(AScene);
    OscMessage myMessage = new OscMessage("/2/scene");
    myMessage.add("Scene A"); /* add description */
    oscP5.send(myMessage, myRemoteLocation); 

  }
  if(theOscMessage.checkAddrPattern("/2/chooser/10/2")==true) {
      changeScene(DScene);
    OscMessage myMessage = new OscMessage("/2/scene");
    myMessage.add("Scene B"); /* add description */
    oscP5.send(myMessage, myRemoteLocation); 
 
  }

  
  if(theOscMessage.checkAddrPattern("/fader1")==true) {
     fader1 = (int)theOscMessage.get(0).floatValue();
        if(fader1 == 0)
        fader1 = 1;
        
  }
  if(theOscMessage.checkAddrPattern("/fader2")==true) {
     fader2 = (int)theOscMessage.get(0).floatValue();
     if(fader2 == 0)
        fader2 = 1;
  }
  if(theOscMessage.checkAddrPattern("/fader3")==true) {
     fader3 = (int)theOscMessage.get(0).floatValue();
        if(fader3 == 0)
        fader3 = 1;
        
  }
  if(theOscMessage.checkAddrPattern("/fader4")==true) {
     fader4 = (int)theOscMessage.get(0).floatValue();
        if(fader4 == 0)
        fader4 = 1;
        
  }
  if(theOscMessage.checkAddrPattern("/fader5")==true) {
     fader5 = (int)theOscMessage.get(0).floatValue();
     if(fader5==0)
      fader5 = 1;
  }
  if(theOscMessage.checkAddrPattern("/fader6")==true) {
     fader6 = (int)theOscMessage.get(0).floatValue();
  }
  
    if (addr.indexOf("/1/xy") !=-1) { // the 8 X Y area
    oscY =  (int)((1-(theOscMessage.get(0).floatValue())) * 800);
    oscX =  (int)(theOscMessage.get(1).floatValue() * 1200);
    normY = theOscMessage.get(0).floatValue();
    normX = theOscMessage.get(1).floatValue();
    println("XY received");
    println("NormX, normY" + normX + " " + normY);
  }
  
  //println(theOscMessage.addrPattern());
  //println(fader1 + " " + fader2 + " " + fader3 + " " + fader4 + " " + fader5 + " " + fader6);
  println(oscX + " " + oscY);
  
}

HashMap<String, Scene> sceneMap = new HashMap<String, Scene>();


void second_setup() {
  if (scene != null) scene.setup();
  else println("Scene is null, not setting up");
}


void draw() {
  if (scene != null) scene.draw();
  else println("Scene is null");
  
  if(BlackFader > 0) {
     colorMode(RGB, 100);
     strokeWeight(1);
     fill(0, 0, 0, 100-BlackFader);
         
     rect(0, 0, 2400, 600);
     BlackFader -- ;
   } else if (BlackFader == 0){
      colorMode(RGB, 100);
      strokeWeight(1);
     scene = tempScene;
     fill(0, 0, 0);
     rect(0, 0, 2400, 600);
     BlackFader -- ;
     background(0);
     second_setup();
     
   } else if (BlackFader > -100){
      colorMode(RGB, 100);
      strokeWeight(1);
      fill(0, 0, 0, 100+BlackFader);
      rect(0, 0, 2400, 600);
       BlackFader--;
   }
   
   
   //Syphon Send
  syphon.send(); 
}

void setup(){
   size(2420, 600, OPENGL);
  // set location - needs to be in setup()
  // set x parameter depending on the resolution of your 1st screen
  //frame.setLocation(1660,50);

   oscP5 = new OscP5(this,12005);
   myRemoteLocation = new NetAddress("192.168.0.48",12006);
   

  //Syphon
  syphon = new Syphon(this, "Understory App"); 
  
  sceneMap.put("0", lineMaker);
  sceneMap.put("1", snowDown);
  sceneMap.put("2", bubbles);
  sceneMap.put("3", lines);
  sceneMap.put("4", spinners);
  sceneMap.put("5", vorenoi);
  sceneMap.put("6", delauney);
  sceneMap.put("7", spotlights);
  sceneMap.put("8", stripes);
  sceneMap.put("9", conway);
  sceneMap.put("x", shader);
  sceneMap.put("c", cubes);
  sceneMap.put("v", treePattern4);
  sceneMap.put("b", treePattern5);
  sceneMap.put("n", treePattern6);
  sceneMap.put("m", treePattern7);
  sceneMap.put(",", treePattern8);
  
  sceneMap.put("a", AScene);
  sceneMap.put("d", DScene);
  sceneMap.put("e", EScene);
  sceneMap.put("f", FScene);
  sceneMap.put("g", GScene);
  sceneMap.put("h", HScene);
  sceneMap.put("i", IScene);
  sceneMap.put("j", JScene);
  sceneMap.put("k", KScene);
  sceneMap.put("l", LScene);
  sceneMap.put("o", OScene);
  sceneMap.put("p", PScene);
  sceneMap.put("q", QScene);
  sceneMap.put("r", RScene);
  sceneMap.put("t", TScene);
  sceneMap.put("u", UScene);
  sceneMap.put("w", WScene);
  sceneMap.put("y", YScene);

  scene = cubes;
  
  smooth();
  fill(0);
  strokeWeight(1);

  Ess.start(this);
  
  second_setup();
  
}


void contactStarted(FContact contact) {
  
  if (scene == RScene ) {

    // Draw in green an ellipse where the contact took place
    //     FBody b1;



    //FBody1 = contact.getBody1

    //   if(((FCircle)contact).getSize()<10){
    fill(255, 255, 255);
    strokeWeight(0);
    ellipse(contact.getX(), contact.getY(), 20, 20);


    if (contact.getBody1() instanceof FCircle && ((FCircle)contact.getBody1()).getSize()>6 || 
      contact.getBody2() instanceof FCircle && ((FCircle)contact.getBody2()).getSize()>6) {
      fill(100, 255, 100);
      ellipse(contact.getX(), contact.getY(), 50, 50);


    
    }
  }


  if (scene == UScene ) {

    // Draw in green an ellipse where the contact took place
    //     FBody b1;



    //FBody1 = contact.getBody1

    //   if(((FCircle)contact).getSize()<10){
    fill(255, 255, 255);
    strokeWeight(0);
    ellipse(contact.getX(), contact.getY(), 20, 20);


    if (contact.getBody1() instanceof FCircle && ((FCircle)contact.getBody1()).getSize()>6 || 
      contact.getBody2() instanceof FCircle && ((FCircle)contact.getBody2()).getSize()>6) {
      if (((FCircle)contact.getBody2()).getSize()>11 ||  ((FCircle)contact.getBody2()).getSize()>11) {


        fill(0, 255, 255);
      }
      else {
        fill(255, 0, 255);
      }
      ellipse(contact.getX(), contact.getY(), 50, 50);
      
    }
  }
  
}

public void init() {
  //frame.removeNotify();
  //frame.setUndecorated(true); // works.
  
  // call PApplet.init() to take care of business
  super.init();
} 


