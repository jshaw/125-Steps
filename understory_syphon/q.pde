

void q_setup() {



  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,0);


  
  FLine b = new FLine(2400,0,0,0);
  world.add(b);
   b = new FLine(0,600,2400,600);
    world.add(b);


}

void q_draw() {
    colorMode(RGB, 255);
    FCircle b;
  background(0);

  if ((frameCount % fader2) == 1) {
     b = new FCircle(random(fader1,fader1+50));


  
    b.setPosition((oscX),oscY);
    b.setStroke(255,255,255);
    b.setRotation(random(2*PI)); 
    b.setVelocity(random(-100,100),random(-100,100));
    b.setAngularVelocity(random(1,-1)); 
   
    b.setDamping(0.1);
    b.setFriction(0.1);
    b.setRestitution(0.8);
    
    
    b.setStrokeWeight(0);
    b.setFill(100+random(155),255,100+random(155));
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
 // FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
       if (((FBody)(BodyList.get(i))).getY()<-100 || ((FBody)(BodyList.get(i))).getY()>800 || ((FBody)(BodyList.get(i))).getX()<-100 || ((FBody)(BodyList.get(i))).getX()>2500)
           world.remove(       (FBody)BodyList.get(i)      );
    }
 }
 
 
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}

/*
void keyPressed() {
  try {
   world.clear(); 
   buildWindows();
   buildRemover();

  } 
  catch (Exception e) {
  }
}
*/


/*

void contactPersisted(FContact c) {
  FBody blob = null;
  if (c.getBody1() == remover) {
    blob = c.getBody2();
  } else if (c.getBody2() == remover) {
    blob = c.getBody1();
  }
  
  if (blob == null) {
    return;
  }
  
   world.remove(blob);
}

*/


