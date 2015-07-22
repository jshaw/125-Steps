
void g_setup() {




   
  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,2);
  

  fill(0,0,0);
   
}

void g_draw() {
  background(0);
   colorMode(HSB, 100);
 
 

  if ((frameCount % fader2) == 1) {
    

    
    FCircle b = new FCircle(1);
  
  
   b.setStatic(false); 
   b.setStaticBody(false);
   
    b.setPosition(oscX,0);
    b.setStroke(255,255,255);
    b.setFill(0,0,0,35);
    
    b.setRotation(0); 
    b.setVelocity(0,20+random(5));
    b.setAngularVelocity(0); 
   
    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(0);
    
    b.setDrawable(false);
    b.setStrokeWeight(0);
    b.setFill(random(255),random(255),255);
    world.add(b);
  }

 
  ArrayList BodyList = world.getBodies();
  FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
      present = (FCircle)BodyList.get(i);
      
      fill(0,0,0,0);
      stroke((present.getX()*17)%100,50,100);
     strokeWeight(fader1);

      ellipse(present.getX(), 600, present.getY()*10, present.getY()*10);
     
      stroke(0,0,0);
        strokeWeight(0);
      //println("Drawing circle of radious: " + present.getY() );

       if (present.getY()>475)
           world.remove(       (FBody)BodyList.get(i)      );
           ellipse(present.getX(),present.getY(),20,20);
    }
 }
 
 
  //remover.setSensor(1);
  world.step();
 // world.draw();
 
}

