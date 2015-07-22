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




char Mode='x';
char TempMode;// = Mode;


int oscX,oscY,fader1=10,fader2=10,fader3=10,fader4=10,fader5=10,fader6=10;
float normX, normY;



void oscEvent(OscMessage theOscMessage) {
  
  String addr = theOscMessage.addrPattern();
  
  /* print the address pattern and the typetag of the received OscMessage */
  
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

  if(theOscMessage.checkAddrPattern("/blob1")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob2")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob3")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob4")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob5")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob6")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob7")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob8")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob9")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob10")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob11")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob12")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
   }
  if(theOscMessage.checkAddrPattern("/blob13")==true) {
   oscX = (int)(theOscMessage.get(0).intValue() * (2400.0/320.0));
   oscY = (int)(theOscMessage.get(1).intValue() * (600.0/120.0));
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
  //println(oscX + " " + oscY);
  
}






void second_setup() {
 


  switch(Mode) {
  case '0': 
     LineMaker_setup();
    break;
  case '1': 
    snow_down_setup();    
    break;
  case '2':
    Bubbles_setup();
    break;
  case '3':
    lines_setup();
    break;
  case '4':
    spinners_setup();

  case 'l':
    spinners2_setup();

    break;
  case '5':
    Vorenoi_setup();

    break;
  case '6':
    Delauney_setup();

    break;
  case '7':
    spotlights_setup();
    break;
  case '8':
    stripes_setup();

    break;
  case '9':
    conway_setup();
    break;  


  case 'q':
    q_setup();
    break; 

  case 'w':
    w_setup();
    break;  

  case 'e':

    e_setup();


    break;  

  case 'r':
    r_setup();
    break;  

  case 't':
    t_setup();
    break;  

  case 'y':
    y_setup();
    break;  

  case 'u':
    u_setup();
    break;  

  case 'i':
    i_setup();
    break;  

  case 'o':
    o_setup();
    break;  

  case 'p':
    p_setup();

    break;  
  case 'a':
    a_setup();
    break;  

  case 'd':
     //d_setup();
     dg_setup();
    break;  

  case 'f':
    f_setup();
    break;  

  case 'g':
    g_setup();
    break;

  case 'h':
    h_setup();
    break;
    
      case 'z':
    TreePattern1_setup();
    break;
    
    
      case 'x':
    //TreePattern2_setup();
    xs_setup();
    break;
    
    case 'c':
    //TreePattern3_setup();
    cb_setup();
    break;
    
    case 'v':
    TreePattern4_setup();
    break;
    
    case 'b':
    TreePattern5_setup();
    break;
    
        
    case 'n':
    TreePattern6_setup();
    break;
    
    case 'm':
    TreePattern7_setup();
    break;
    
    case ',':
    TreePattern8_setup();
    break;
    
    case 'j':
    j_setup();
    break;
    
    case 'k':
      k_setup();
    break;
    
  }
  
  
}


void draw() {
   
   
   


  switch(Mode) {
  case '0': 
     LineMaker_draw();
    break;
  case '1': 
    snow_down_draw(); 
    break;
  case '2':
    Bubbles_draw();
    break;
  case '3':
     lines_draw();
    break;
  case '4':
    spinners_draw();

  case 'l':
    spinners2_draw();

    break;
  case '5':
    Vorenoi_draw();

    break;
  case '6':
    Delauney_draw();

    break;
  case '7':
    spotlights_draw();
    break;
  case '8':
    stripes_draw();

    break;
  case '9':
    conway_draw();
    break;  


  case 'q':
    q_draw();
    break; 

  case 'w':
    w_draw();
    break;

  case 'e':

    e_draw();

    break;  

  case 'r':
    r_draw();
    break;  

  case 't':
    t_draw();
    break;  

  case 'y':
    y_draw();
    break;  

  case 'u':
    u_draw();
    break;  

  case 'i':
    i_draw();
    break;  

  case 'o':
    o_draw();
    break;  

  case 'p':
    p_draw();
    break;    



  case 'd':
     //d_draw();
     dg_draw();
    break;  

  case 'f':
    f_draw();
    break;  

  case 'g':
    g_draw();
    break;

  case 'h':
    h_draw();
    break;
    
      case 'z':
    TreePattern1_draw();
    break;
    
    case 'x':
    //TreePattern2_draw();
    xs_draw();
    break;
    
    case 'c':
    //TreePattern3_draw();
    cb_draw();
    break;


    case 'v':
    TreePattern4_draw();
    break;
    
    case 'b':
    TreePattern5_draw();
    break;
    
    
    case 'a':
    a_draw();
    break;
    
    case 'n':
     TreePattern6_draw();
    break;
    
    case 'm':
     TreePattern7_draw();
    break;
    
    case ',':
     TreePattern8_draw();
    break;
    
    case 'j':
      j_draw();
    break;
    
    case 'k':
       k_draw();
    break;
    
    
  }
  
   
  
  if(BlackFader > 0) {
     colorMode(RGB, 100);
     strokeWeight(1);
     fill(0, 0, 0, 100-BlackFader);
         
     rect(0, 0, 2400, 600);
     BlackFader -- ;
   } else if (BlackFader == 0){
      colorMode(RGB, 100);
      strokeWeight(1);
     Mode = TempMode;
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



void GiveDescription(){
  
  switch(TempMode){
    case '0': 
      println("0: Tree rectangle setup system.");
   break;
      
   case '1': 
      println("1: Piling white snow. Falls from sensor X position");
    break;
    
          
   case '2': 
      println("2: Champagne bubbles. Rises from sensor X position");
    break;
    
    case '3': 
      println("3: Horizontal and vertical moving white lines");
    break;
    
    case '4': 
      println("4: Spinning rectangles");
    break;

    case 'l': 
      println("l: Hollow Spinning rectangles");
    break;
    
     case '5': 
      println("5: Vorenoi Polygons");
    break;
    
     case '6': 
      println("6: Overlapping coloured rectangles");
    break;
    
     case '7': 
      println("7: Left and right bouncing balls");
    break;
    
     case '8': 
      println("8: scrolling rainbow stripes");
    break;
    
   case '9': 
      println("9: Conway's game o life");
    break;
    
    case 'q': 
      println("q: Screen filling green balls. Appear at sensor x,y");
    break;
    
    case 'w': 
      println("w: balls fly from left to right");
    break;
    
     case 'r': 
      println("r: Comets");
    break;
    
    case 't': 
      println("t: Rain");
    break;
    
    case 'y': 
      println("y: Vines");
    break;
    
    
     case 'u': 
      println("u: Fireflies");
    break;

     case 'i': 
      println("i: Vorenoi outlines");
    break;
    
     case 'o': 
      println("o: Rotating grid");
    break;
    
    case 'p': 
      println("p: Rotating mesh sphere");
    break;
    
    
    case 'd': 
      println("d: (diag) Expanding then Conracting circle outlines");
    break;
    
    case 'e': 
      println("e: Fountain of pink balls");
    break;
    
    case 'f': 
      println("f: Scrolling grayscale stripes");
    break;
    
    case 'g': 
      println("g: Expanding circle outlines");
    break;
    
   case 'z': 
      println("z: Tree Pattern 1, Sin Wave Fade");
    break;
    
       case 'x': 
      println("x: Tree Pattern 2, Sin Wave Height");
    break;
    
    
     case 'c': 
      //println("c: Tree Pattern 3, Strobe");
      println("c: Cubes");
    break;
    
    case 'v': 
      println("x: Tree Pattern 4, Triangles");
    break;
    
    case 'b': 
      println("b: Tree Pattern 5, 125");
    break;
    
    case 'n': 
      println("n: Tree Pattern 6, rainbow sin waves");
    break;
    
    
    case 'm': 
      println("m: Tree Pattern 7, complex waves");
    break;
    
    
    case 'a': 
      println("a: Static grid");
    break;
    
   case ',': 
      println(",: TreePttern 8, complex waves with solid bottoms");
    break;
    
     case 'h': 
      println("h: Flying Rectangles");
    break;
    
    case 'j':
       println("j: inside a 3d rotating point mesh");
    break;
    
    case 'k':
       println("k: point board");
     break;
     
    
    
    default:
      println("No pattern assigned to this key. Defaulting to black");
    break;
    
     
    
  } 
  

  
  
}

void setup(){
   size(2420, 600, OPENGL);
  // set location - needs to be in setup()
  // set x parameter depending on the resolution of your 1st screen
  //frame.setLocation(1660,50);

   oscP5 = new OscP5(this,12005);
   myRemoteLocation = new NetAddress("127.0.0.1",12005);

  //Syphon
  syphon = new Syphon(this, "Understory App"); 

 
  
  smooth();
  fill(0);
  strokeWeight(1);

  Ess.start(this);
  
  second_setup();
  
}


void contactStarted(FContact contact) {
  
  if (Mode == 'r' ) {

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


  if (Mode == 'u' ) {

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


