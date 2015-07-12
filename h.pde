


void h_setup() {


  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 0);
  //snowflake = loadImage ("snowflake_small.png");

  //buildRemover();

}

void h_draw() {
      colorMode(RGB, 255);
  background(0);

  if ((frameCount % fader2) == 1) {
    FCircle b = new FCircle(1);

  
    if(random(4)<2){
    
      b.setPosition(2400,random(600));
      b.setVelocity(random(-100-fader3*2),0);
      
      //b.setStroke(255,random(255),255);
      b.setFill(255,255,255);
    } else {
      b.setPosition(-60,random(600));
     // b.setStroke(255,255,random(255),60);
      b.setFill(255,255,255);
      
      b.setVelocity(random(100+fader3*2),0);
    }
    
      
    
    
    
    b.setRotation(random(2*PI)); 
    b.setAngularVelocity(random(1,-1)); 
   
    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(1);
    
    
    b.setStrokeWeight(5);
    
    b.setNoStroke();
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
 // FCircle present;
 fill(fader4,fader5,fader6);
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
      
      stroke(255,255,255);
       	



      rect(((FBody)(BodyList.get(i))).getX()-fader1,((FBody)(BodyList.get(i))).getY()-fader1/2,fader1*2,fader1);
      

       
    //  ellipse(((FBody)(BodyList.get(i))).getX(),((FBody)(BodyList.get(i))).getY(),10,10);
      
       if (((FBody)(BodyList.get(i))).getY()<-0 || ((FBody)(BodyList.get(i))).getY()>600){
         

            

           
           
           world.remove(       (FBody)BodyList.get(i)      );
           
       }
    }
 }

 
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}



