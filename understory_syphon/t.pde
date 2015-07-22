


void t_setup() {




  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 150);



}

void t_draw() {
    
  colorMode(RGB, 255);
  
     fill(0,0,0,10);
       rect(0,0,2400,600);

  //if ((frameCount % 2) == 1) {
    
    for(int j=0; j< 2; j++){
    FCircle b = new FCircle(random(5,10));

    b.setPosition(random(2400),0);
    b.setStroke(0);
    
    b.setVelocity(0, 100); 
    
    
    //b.attachImage(snowflake);
    //b.setRestitution(1);
    b.setStrokeWeight(0);
    b.setFill(100+random(100),100+random(100),255);
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
 // FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
       if (((FBody)(BodyList.get(i))).getY()>=600)
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


