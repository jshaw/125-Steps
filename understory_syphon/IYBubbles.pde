



void Bubbles_setup() {






  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, -450);
  //snowflake = loadImage ("snowflake_small.png");

  //buildRemover();
  
}

void Bubbles_draw() {
    colorMode(RGB, 255);
  background(0);

  if ((frameCount % fader2) == 1) {
    FCircle b = new FCircle(random(1+fader1,40+fader1));


   
    b.setVelocity(random(-fader3),random(-fader3,fader3));
    b.setPosition(oscX, 800);
    
    b.setDamping(0.6);
    b.setFriction(0.6);
    b.setRestitution(1);
    
    
    b.setStroke(0);
 
    b.setStrokeWeight(0);
    b.setFill(255,random(255),random(255));
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
 // FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
       if (((FBody)(BodyList.get(i))).getY()<=-50)
           world.remove(       (FBody)BodyList.get(i)      );
       }
       
          if (((FBody)(BodyList.get(i))).getX()<=0){
            ((FBody)(BodyList.get(i))).setPosition(0,((FBody)(BodyList.get(i))).getY());
            ((FBody)(BodyList.get(i))).setVelocity(0,((FBody)(BodyList.get(i))).getVelocityY()             );
       }
       
       
        if (((FBody)(BodyList.get(i))).getX()>=2400){
              ((FBody)(BodyList.get(i))).setPosition(2048,((FBody)(BodyList.get(i))).getY());
            ((FBody)(BodyList.get(i))).setVelocity(0,((FBody)(BodyList.get(i))).getVelocityY()             );
       }
       
       
 }
 
 
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}

