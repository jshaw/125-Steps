
void d_setup() {




   
  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, -26);
  

  fill(0,0,0);
     
}

void d_draw() {
 colorMode(HSB, 100);

 background(0);

  if ((frameCount % fader2) == 1) {
    

    
    FCircle b = new FCircle(1);
  
  
   b.setStatic(false); 
   b.setStaticBody(false);
   
    b.setPosition(oscX,0);
    b.setStroke(255,255,255);
    b.setFill(0,0,0,10);
    
    b.setRotation(0); 
    b.setVelocity(0,200+random(50));
    b.setAngularVelocity(0); 
   
    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(0);
    
    
    b.setStrokeWeight(0);
    b.setFill(random(255),random(255),255);
    world.add(b);
  }

   strokeWeight(fader1*3);
  ArrayList BodyList = world.getBodies();
  FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
      present = (FCircle)BodyList.get(i);

      fill(0,0,0,0);
      stroke((present.getX()*17)%100,10,100);
   
      
      ellipse(present.getX(), 600, present.getY(), present.getY());
     
  //    print("Drawing circle" + present.getY() + "/n");

       if (present.getY()< 0)
           world.remove(       (FBody)BodyList.get(i)      );
       //    ellipse(present.getX(),present.getY(),20,20);
    }
 }
 
 
  //remover.setSensor(1);
  world.step();
 // world.draw();
 
}

