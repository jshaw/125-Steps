






void r_setup() {
  
   


  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,0);



   FCircle b;
  for(int i=0; i< 125; i++){
 
      b = new FCircle( random(fader1/10.0,fader1/5.0));
    
   
    //b.setDrawable(false);
    b.setPosition(random(2400), 1);
    b.setStroke(0);
    b.setStrokeWeight(0);
    b.setFill(255);
    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(1);
    b.setVelocity(random(-100,100),random(-100,100));
    world.add(b);
  }
  
  
 
      b = new FCircle(60);
    
   
    //b.setDrawable(false);
    b.setPosition(random(2400), 1);
    b.setStroke(0);
    b.setStrokeWeight(0);
    
     b.setFill(255,230,230);
     

    
    b.setDensity(0.007);
    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(1);
    b.setVelocity(random(-100,100),random(-100,100));
    world.add(b);
  
  
  

  //remover = new FBox(2068, 20);
  //remover.setPosition(1024, height+40);
  //remover.setStatic(true);
  //remover.setFill(0);
  //remover.setRestitution(0);
  //world.add(remover);
  
  fill(0,0,0);
  rect(0,0,2400,600);

}

void r_draw() {
     colorMode(RGB, 255);
     
   fill(0,0,0,5);
    rect(0,0,2400, 600);
   if((frameCount % fader2) == 1){
      fill(0,0,0,10);
        rect(0,0,2400, 600);
   }


  
  ArrayList BodyList = world.getBodies();



    

    
   FBody present;
   int k = 0;
   int m = 0;
   
  for(int i=0; i < BodyList.size(); i++){
        present = (FBody)BodyList.get(i);
        
        
        if(present instanceof FCircle){//ball
        
         if(((FCircle)present).getSize()>50){
           present.setPosition(oscX,oscY);  
           present.setVelocity(0,0);
           
         } else {
         
          if(present.getX() < 0){
             present.setPosition(0,present.getY());
             present.setVelocity(-present.getVelocityX(),present.getVelocityY()); 
          }
          
          
          if(present.getX() > 2400){
             present.setPosition(2400,present.getY());
             present.setVelocity(-present.getVelocityX(),present.getVelocityY()); 
          }
          
       
           if(present.getY() < 0){
             present. setPosition(present.getX(),0);
             present.setVelocity(present.getVelocityX(),-present.getVelocityY()); 
          }

           if(present.getY() > 600){
             present. setPosition(present.getX(),600);
             present.setVelocity(present.getVelocityX(),-present.getVelocityY()); 
          }
          
          
          
        
    
        }}
        
        
        // points[k][0] = i;
         //points[k][1] = i;
          
       // } 
    
  }


 
  world.step();
  world.draw();
  //println(world.getBodies());
}



