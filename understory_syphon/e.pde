
void e_setup() {




   
  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 200);
  

  fill(0,0,0);
  
}

void e_draw() {
   colorMode(RGB, 255);
 
  background(0);

  if ((frameCount % fader2) == 1) {
    

    
    FCircle b = new FCircle(random(1+fader1,40+fader1));
  
  
   b.setStatic(false); 
   b.setStaticBody(false);
   
    b.setPosition(oscX,800);
    b.setStroke(255,255,255);
    b.setRotation(random(2*PI)); 
    b.setVelocity(random(-500,500),random(-1200));
    b.setAngularVelocity(random(1,-1)); 
   
    b.setDamping(0.8);
    b.setFriction(0.1);
    b.setRestitution(1);
    
    
    b.setStrokeWeight(0);
    b.setFill(255);
    b.setStroke(255);
    b.setStrokeWeight(20);
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
  FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
      present = (FCircle)BodyList.get(i);
      
       if (present.getY()> 810)
           world.remove(       (FBody)BodyList.get(i)      );
       //    ellipse(present.getX(),present.getY(),20,20);
    }
 }
 
 
  //remover.setSensor(1);
  world.step();
  world.draw();
 
}

