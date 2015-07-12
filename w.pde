/**
 *  Buttons and bodies
 *
 *  by Ricard Marxer
 *
 *  This example shows how to create a blob.
 */





//   PImage snowflake;



void w_setup() {



  Fisica.init(this);

  world = new FWorld();
  world.setGravity(100,0);
  //snowflake = loadImage ("snowflake_small.png");



}

void w_draw() {
      colorMode(RGB, 255);
      
  background(0);

  if ((frameCount % fader2) == 1) {
    FCircle b = new FCircle(random(fader1,fader1+40));

  
    b.setPosition(-20,random(600));
    b.setStroke(255,255,255);
    b.setRotation(random(2*PI)); 
    b.setVelocity(100,random(-400,400));
    b.setAngularVelocity(random(1,-1)); 
   
    b.setDamping(0.2);
    b.setFriction(0.2);
    b.setRestitution(1);
    
    
    b.setStrokeWeight(fader3/2.0f);
    b.setFill(random(255),random(255),random(255));
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
 // FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
       if (((FBody)(BodyList.get(i))).getY()<-100 || ((FBody)(BodyList.get(i))).getY()>700 || ((FBody)(BodyList.get(i))).getX()<-100 || ((FBody)(BodyList.get(i))).getX()>2500)
           world.remove(       (FBody)BodyList.get(i)      );
    }
 }
 
 
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}

