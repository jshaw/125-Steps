/**
 *  Buttons and bodies
 *
 *  by Ricard Marxer
 *
 *  This example shows how to create a blob.
 */





//   PImage snowflake;



void y_setup() {



  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, -150);



}

void y_draw() {
    
  colorMode(RGB, 255);
  
     fill(0,0,0,2);
     rect(0,0,2400, 600);

  if ((frameCount % 20) == 1) {
     fill(0,0,0,9);
     rect(0,0,2400,600);
  }
    
    //for(int j=0; j< 2; j++){
    FCircle b = new FCircle(random(fader1,fader1*2));

    b.setPosition(oscX,600);
    b.setStroke(0);
    
    b.setVelocity(random(-20,20), -20); 
    
    b.setDamping(1);
    b.setFriction(1);
    b.setRestitution(1);
    
    
    //b.attachImage(snowflake);
    //b.setRestitution(1);
    b.setStrokeWeight(0);
    //b.setFill(200+random(55),255,150+random(105));
    b.setFill(fader4,fader5,fader6);
    world.add(b);
 // }


  ArrayList BodyList = world.getBodies();
 // FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
      
      ((FBody)(BodyList.get(i))).adjustVelocity(random(-20,20),random(-20,20));
      
      
       if (((FBody)(BodyList.get(i))).getY()<0)
           world.remove(       (FBody)BodyList.get(i)      );
    }
 }
 
 
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}

