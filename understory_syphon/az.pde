




<<<<<<< HEAD

void a_setup() {
}


=======
 
void a_setup() {

  
}
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff





<<<<<<< HEAD
void a_draw() {
  int gridWidth = fader5;


  colorMode(RGB, 255);
  background(0);




  pushMatrix();

  translate(1200, 300, 0); 

  //      rotateX(zr);

  //  rotateY(yr);


  rotateZ(fader4/100.0f);

  strokeWeight(3);
  stroke(255, 255, 255);
  fill(255, 255, 255, 200);

  for (int i=-1200/gridWidth; i< 1200/gridWidth; i++) {
    rect(i*gridWidth, -1200, fader1/30, 2400);
  }  

  for (int i=-1200/gridWidth; i< 1200/gridWidth; i++) {
    rect(-1200, i*gridWidth, 2400, fader1/30);
  }  




  v_offset+=0.5;
  if (v_offset > gridWidth) {
    v_offset = 0;
  }

  grid_Offset+=1;
  if (grid_Offset > gridWidth) {
    grid_Offset = 0;
  }



  popMatrix();
=======
  
  
void a_draw() {
  int gridWidth = fader5;
  
  
    colorMode(RGB, 255);
  background(0);

  

  
   pushMatrix();
   
   translate(1200,300, 0); 
   
    //      rotateX(zr);
        
     //  rotateY(yr);
        
        
        rotateZ(fader4/100.0f);
  
      strokeWeight(3);
     stroke(255,255,255);
      fill(255,255,255,200);
      
    for(int i=-1200/gridWidth; i< 1200/gridWidth;i++){
    rect(i*gridWidth, -1200, fader1/30, 2400);
  }  
  
   for(int i=-1200/gridWidth; i< 1200/gridWidth;i++){
    rect(-1200, i*gridWidth, 2400, fader1/30);
  }  
  
  
          
          
  v_offset+=0.5;
  if(v_offset > gridWidth){
      v_offset = 0;
  }
  
  grid_Offset+=1;
  if(grid_Offset > gridWidth){
      grid_Offset = 0;
  }
  
  
  
   popMatrix();
   


>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}




<<<<<<< HEAD

=======
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff




void d_setup() {




<<<<<<< HEAD

=======
   
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, -26);
<<<<<<< HEAD


  fill(0, 0, 0);
}

void d_draw() {
  colorMode(HSB, 100);

  background(0);

  if ((frameCount % fader2) == 1) {



    FCircle b = new FCircle(1);


    b.setStatic(false); 
    b.setStaticBody(false);

    b.setPosition(oscX, 0);
    b.setStroke(255, 255, 255);
    b.setFill(0, 0, 0, 10);

    b.setRotation(0); 
    b.setVelocity(0, 200+random(50));
    b.setAngularVelocity(0); 

    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(0);


    b.setStrokeWeight(0);
    b.setFill(random(255), random(255), 255);
    world.add(b);
  }

  strokeWeight(fader1*3);
  ArrayList BodyList = world.getBodies();
  FCircle present;
  for (int i=0; i< BodyList.size (); i++) {
    if (BodyList.get(i) instanceof FCircle) {
      present = (FCircle)BodyList.get(i);

      fill(0, 0, 0, 0);
      stroke((present.getX()*17)%100, 10, 100);


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
=======
  

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
 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}


void e_setup() {




<<<<<<< HEAD

=======
   
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 200);
<<<<<<< HEAD


  fill(0, 0, 0);
}

void e_draw() {
  colorMode(RGB, 255);

  background(0);

  if ((frameCount % fader2) == 1) {



    FCircle b = new FCircle(random(1+fader1, 40+fader1));


    b.setStatic(false); 
    b.setStaticBody(false);

    b.setPosition(oscX, 800);
    b.setStroke(255, 255, 255);
    b.setRotation(random(2*PI)); 
    b.setVelocity(random(-500, 500), random(-1200));
    b.setAngularVelocity(random(1, -1)); 

    b.setDamping(0.8);
    b.setFriction(0.1);
    b.setRestitution(1);


=======
  

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
    
    
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
    b.setStrokeWeight(0);
    b.setFill(255);
    b.setStroke(255);
    b.setStrokeWeight(20);
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
  FCircle present;
<<<<<<< HEAD
  for (int i=0; i< BodyList.size (); i++) {
    if (BodyList.get(i) instanceof FCircle) {
      present = (FCircle)BodyList.get(i);

      if (present.getY()> 810)
        world.remove(       (FBody)BodyList.get(i)      );
      //    ellipse(present.getX(),present.getY(),20,20);
    }
  }


  //remover.setSensor(1);
  world.step();
  world.draw();
=======
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
 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}






<<<<<<< HEAD

void f_setup() {


=======
 
void f_setup() {
  
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  ColorCode = 0;
  Stripe_Offset = 0;
  Window_Offset = 0;
  WindowCode = 0;  
<<<<<<< HEAD


  smooth();
  ellipseMode(CENTER);
=======
  
  
  smooth();
  ellipseMode(CENTER);



>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}


float rotx = 0.5;

<<<<<<< HEAD

void f_draw() {

  rotx = fader6/50.0;
  int Stripe_Width = fader1;
  colorMode(HSB, 100);
  background(0);
  PVector v0;
  // rotx+=0.0001;
  strokeWeight(fader1/5);
  stroke(0, 0, 0);


  pushMatrix();

  translate(1024, 384, 0); 

  rotateZ(rotx);


  for (int i=-100; i< 100; i++) {

    fill(0, 0, ((abs(i-ColorCode)*10))%100);

    rect(i*Stripe_Width+Stripe_Offset, -1000, Stripe_Width, 2000);
  }  
  popMatrix();


  Stripe_Offset+=2;
  if (Stripe_Offset > Stripe_Width) {
    Stripe_Offset = 0;
    ColorCode++;
  }

  Window_Offset-=0.5;
  if (Window_Offset < 1) {
    Window_Offset = 10;
    WindowCode--;
  }
}


=======
  
void f_draw() {
  
  rotx = fader6/50.0;
  int Stripe_Width = fader1;
      colorMode(HSB, 100);
  background(0);
  PVector v0;
   // rotx+=0.0001;
     strokeWeight(fader1/5);
     stroke(0,0,0);

   
      pushMatrix();
   
   translate(1024,384, 0); 
   
        rotateZ(rotx);
        

  for(int i=-100; i< 100;i++){
    
     fill(0,0,((abs(i-ColorCode)*10))%100);
     
    rect(i*Stripe_Width+Stripe_Offset, -1000, Stripe_Width, 2000);
    
    
    
    
  }  
  popMatrix();
  
  
  Stripe_Offset+=2;
  if(Stripe_Offset > Stripe_Width){
      Stripe_Offset = 0;
      ColorCode++;
    
  }

  Window_Offset-=0.5;
  if(Window_Offset < 1){
    Window_Offset = 10;
    WindowCode--;
  }
  
       

    
  
  


}
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff




<<<<<<< HEAD



void g_setup() {

=======
  




void g_setup() {
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff




<<<<<<< HEAD
  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 2);


  fill(0, 0, 0);
=======
   
  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,2);
  

  fill(0,0,0);
   
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}

void g_draw() {
  background(0);
<<<<<<< HEAD
  colorMode(HSB, 100);



  if ((frameCount % fader2) == 1) {



    FCircle b = new FCircle(1);


    b.setStatic(false); 
    b.setStaticBody(false);

    b.setPosition(oscX, 0);
    b.setStroke(255, 255, 255);
    b.setFill(0, 0, 0, 35);

    b.setRotation(0); 
    b.setVelocity(0, 20+random(5));
    b.setAngularVelocity(0); 

    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(0);

    b.setDrawable(false);
    b.setStrokeWeight(0);
    b.setFill(random(255), random(255), 255);
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
  FCircle present;
  for (int i=0; i< BodyList.size (); i++) {
    if (BodyList.get(i) instanceof FCircle) {
      present = (FCircle)BodyList.get(i);

      fill(0, 0, 0, 0);
      stroke((present.getX()*17)%100, 50, 100);
      strokeWeight(fader1);

      ellipse(present.getX(), 600, present.getY()*10, present.getY()*10);

      stroke(0, 0, 0);
      strokeWeight(0);
      //println("Drawing circle of radious: " + present.getY() );

      if (present.getY()>475)
        world.remove(       (FBody)BodyList.get(i)      );
      ellipse(present.getX(), present.getY(), 20, 20);
    }
  }


  //remover.setSensor(1);
  world.step();
  // world.draw();
=======
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
 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}




void h_setup() {


  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 0);
  //snowflake = loadImage ("snowflake_small.png");

  //buildRemover();
<<<<<<< HEAD
}

void h_draw() {
  colorMode(RGB, 255);
=======

}

void h_draw() {
      colorMode(RGB, 255);
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  background(0);

  if ((frameCount % fader2) == 1) {
    FCircle b = new FCircle(1);

<<<<<<< HEAD

    if (random(4)<2) {

      b.setPosition(2400, random(600));
      b.setVelocity(random(-100-fader3*2), 0);

      //b.setStroke(255,random(255),255);
      b.setFill(255, 255, 255);
    } else {
      b.setPosition(-60, random(600));
      // b.setStroke(255,255,random(255),60);
      b.setFill(255, 255, 255);

      b.setVelocity(random(100+fader3*2), 0);
    }





    b.setRotation(random(2*PI)); 
    b.setAngularVelocity(random(1, -1)); 

    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(1);


    b.setStrokeWeight(5);

=======
  
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
    
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
    b.setNoStroke();
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
<<<<<<< HEAD
  // FCircle present;
  fill(fader4, fader5, fader6);
  for (int i=0; i< BodyList.size (); i++) {
    if (BodyList.get(i) instanceof FCircle) {

      stroke(255, 255, 255);




      rect(((FBody)(BodyList.get(i))).getX()-fader1, ((FBody)(BodyList.get(i))).getY()-fader1/2, fader1*2, fader1);



      //  ellipse(((FBody)(BodyList.get(i))).getX(),((FBody)(BodyList.get(i))).getY(),10,10);

      if (((FBody)(BodyList.get(i))).getY()<-0 || ((FBody)(BodyList.get(i))).getY()>600) {






        world.remove(       (FBody)BodyList.get(i)      );
      }
    }
  }


=======
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

 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}










void i_setup() {
<<<<<<< HEAD




=======
  
      
      
      
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff


  Fisica.init(this);

  world = new FWorld();
<<<<<<< HEAD
  world.setGravity(0, 0);



  FCircle b;
  for (int i=0; i< 125; i++) {

    b = new FCircle(5);


=======
  world.setGravity(0,0);



   FCircle b;
  for(int i=0; i< 125; i++){
 
      b = new FCircle(5);
    
   
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
    b.setDrawable(false);
    b.setPosition(random(2400), 1);
    b.setStroke(0);
    b.setStrokeWeight(0);
    b.setFill(255);
    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(1);
<<<<<<< HEAD
    b.setVelocity(random(-100, 100), random(-100, 100));
    world.add(b);
  }

=======
    b.setVelocity(random(-100,100),random(-100,100));
    world.add(b);
  }
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  //remover = new FBox(2048, 20);
  //remover.setPosition(1024, height+40);
  //remover.setStatic(true);
  //remover.setFill(0);
  //remover.setRestitution(0);
  //world.add(remover);
<<<<<<< HEAD
=======
  
  

>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}

void i_draw() {
  colorMode(HSB, 100);
  background(0);



<<<<<<< HEAD

  ArrayList BodyList = world.getBodies();


  int alength = BodyList.size();
  float[][] points = new float[alength][2];



  FBody present;
  int k = 0;
  int m = 0;

  for (int i=0; i < BodyList.size (); i++) {
    present = (FBody)BodyList.get(i);


    if (present instanceof FCircle) {//ball

      if (present.getX() < 0) {
        present.setPosition(0, present.getY());
        present.setVelocity(-present.getVelocityX(), present.getVelocityY());
      }


      if (present.getX() > 2400) {
        present.setPosition(2048, present.getY());
        present.setVelocity(-present.getVelocityX(), present.getVelocityY());
      }


      if (present.getY() < 0) {
        present. setPosition(present.getX(), 0);
        present.setVelocity(present.getVelocityX(), -present.getVelocityY());
      }

      if (present.getY() > 600) {
        present. setPosition(present.getX(), 600);
        present.setVelocity(present.getVelocityX(), -present.getVelocityY());
      }





      points[m][0] = present.getX()+i;
      points[m][1] = present.getY()+i;
      m++;
    } 


    // points[k][0] = i;
    //points[k][1] = i;

    // }
  }







  try {
    Voronoi myVoronoi = new Voronoi( points );


    MPolygon[] myRegions = myVoronoi.getRegions();


    //stroke(100,0,0);
    strokeWeight(fader1/5);
    fill(0, 0, 0);
    for (int i=0; i<myRegions.length; i++)
    {
      // an array of points
      float[][] regionCoordinates = myRegions[i].getCoords();

      stroke((i*7)%100, 50, 100);
      noFill();
      myRegions[i].draw(this); // draw this shape
    }
  }  
  catch (Exception e) {
    e.printStackTrace();
  }



=======
  
  ArrayList BodyList = world.getBodies();


int alength = BodyList.size();
  float[][] points = new float[alength][2];
    

    
   FBody present;
   int k = 0;
   int m = 0;
   
  for(int i=0; i < BodyList.size(); i++){
        present = (FBody)BodyList.get(i);
        
        
        if(present instanceof FCircle){//ball
        
          if(present.getX() < 0){
             present.setPosition(0,present.getY());
             present.setVelocity(-present.getVelocityX(),present.getVelocityY()); 
          }
          
          
          if(present.getX() > 2400){
             present.setPosition(2048,present.getY());
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
          
          
          
        
        
      	  points[m][0] = present.getX()+i;
          points[m][1] = present.getY()+i;
          m++;
        } 
        
        
        // points[k][0] = i;
         //points[k][1] = i;
          
       // } 
    
  }

  



 

   try{
   Voronoi myVoronoi = new Voronoi( points );
   

   MPolygon[] myRegions = myVoronoi.getRegions();

       
        //stroke(100,0,0);
        strokeWeight(fader1/5);
        fill(0,0,0);
for(int i=0; i<myRegions.length; i++)
{
	// an array of points
	float[][] regionCoordinates = myRegions[i].getCoords();
	
	stroke((i*7)%100,50,100);
        noFill();
	myRegions[i].draw(this); // draw this shape
  }
  
  }  catch (Exception e) {
        e.printStackTrace();
        }
  

 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  world.step();
  world.draw();
  //println(world.getBodies());
}






<<<<<<< HEAD

void j_setup() {

=======
 
void j_setup() {
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  ellipseMode(CENTER);


<<<<<<< HEAD

  Window_Offset = 0;
  WindowCode=0;


  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 0);



  ArrayList BodyList = world.getBodies();


  sphereDetail(80);
=======
    
Window_Offset = 0;
WindowCode=0;


   Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,0);
  

   
   ArrayList BodyList = world.getBodies();
   
 
sphereDetail(80);
  
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}






<<<<<<< HEAD

void j_draw() {
  colorMode(RGB, 255);



  background(0);


=======
  
void j_draw() {
    colorMode(RGB, 255);
  
  
  
  background(0);

  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  zra+=0.001*(-128+fader2)/20.0f;
  yra+=0.001*(-128+fader3)/20.0f;
  xra+=0.001*(-128+fader4)/20.0f;
<<<<<<< HEAD

  pushMatrix();

  translate(1200, 300, 400); 

  rotateX(zra);

  rotateY(yra);


  rotateZ(zra);

  int x, y=0, t;
  fill(fader4, fader5, fader6);
  noStroke();
  for ( t = -150; t< 150; t+= 15) {
    for ( y = -150; y< 150; y+=15) {
      for ( x = -150; x<150; x+=15) {
        pushMatrix();
        translate(x, y, t);

        rect(0, 0, fader1/50.0f, fader1/50.0f); 
        popMatrix();
      }
    }
  }
  //println("end");








  popMatrix();
=======
  
   pushMatrix();
   
   translate(1200,300, 400); 
   
       rotateX(zra);
        
       rotateY(yra);
        
        
        rotateZ(zra);
  
  int x,y=0,t;
     fill(fader4,fader5,fader6);
     noStroke();
     for( t = -150; t< 150; t+= 15){
       for( y = -150; y< 150; y+=15){
         for( x = -150; x<150; x+=15){
              pushMatrix();
            translate(x,y,t);
              
             rect(0,0,fader1/50.0f,fader1/50.0f); 
               popMatrix();
                
         }
       }
     }
         //println("end");
         
  
          
          

  
  
  
popMatrix();
   

       


  


>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}




<<<<<<< HEAD

=======
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff









void k_setup() {
}







void k_draw() {
  colorMode(RGB, 255);
  background(0);
<<<<<<< HEAD
  int x=0, y=0;
=======
      int x=0, y=0;
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff


  zra+=0.001*(-128+fader2)/50.0f;
  yra+=0.001*(-128+fader3)/50.0f;
  xra+=0.001*(-128+fader4)/50.0f;



  for (int j = 0; j< 3; j++) {
    pushMatrix();

    if ( j == 0) {
      translate(800, 300, 300);
<<<<<<< HEAD
      rotateX(zra);
      rotateZ(xra);
    } else if (j==1) {
      translate(1600, 300, 300);
      rotateX(yra);
      rotateZ(yra);
    } else {
      translate(1200, 300, 300); 
      rotateX(xra);
      rotateZ(zra);
    }



=======
         rotateX(zra);
         rotateZ(xra);
    
    } 
   else if(j==1) {
      translate(1600, 300, 300);
         rotateX(yra);
         rotateZ(yra);
    } else {
       translate(1200,300,300); 
          rotateX(xra);
          rotateZ(zra);
    }


 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff


    fill(255, 255, 255);
    noStroke();


    for ( y = -200; y< 200; y+=10)
      for ( x = -200; x<200; x+=10) {
        pushMatrix();
        translate(x, y, 0);

        rect(0, 0, fader1/5, fader1/5); 
        popMatrix();
      }
    popMatrix();
  }
<<<<<<< HEAD
}

=======

  
}
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff












<<<<<<< HEAD
void l_setup() {

=======
 
void l_setup() {
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  ellipseMode(CENTER);


<<<<<<< HEAD

  Window_Offset = 0;
  WindowCode=0;


  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 0);



  ArrayList BodyList = world.getBodies();


  sphereDetail(80);
=======
    
Window_Offset = 0;
WindowCode=0;


   Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,0);
  

   
   ArrayList BodyList = world.getBodies();
   
 
sphereDetail(80);
  
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}






<<<<<<< HEAD

void l_draw() {
  colorMode(RGB, 255);



  background(0);


=======
  
void l_draw() {
    colorMode(RGB, 255);
  
  
  
  background(0);

  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  zra+=0.001*(-128+fader2)/50.0f;
  yra+=0.001*(-128+fader3)/50.0f;
  xra+=0.001*(-128+fader4)/50.0f;
<<<<<<< HEAD

  pushMatrix();

  translate(1200, 300, 400); 

  rotateX(zra);

  rotateY(yra);


  rotateZ(zra);

  int x, y=0, t;
  fill(255, 255, 255);
  noStroke();
  for ( t = -150; t< 150; t+= 15) {
    for ( y = -150; y< 150; y+=15) {
      for ( x = -150; x<150; x+=15) {
        pushMatrix();
        translate(x, y, t);

        rect(0, 0, 1, 1); 
        popMatrix();
      }
    }
  }
  //println("end");








  popMatrix();
=======
  
   pushMatrix();
   
   translate(1200,300, 400); 
   
       rotateX(zra);
        
       rotateY(yra);
        
        
        rotateZ(zra);
  
  int x,y=0,t;
     fill(255,255,255);
     noStroke();
     for( t = -150; t< 150; t+= 15){
       for( y = -150; y< 150; y+=15){
         for( x = -150; x<150; x+=15){
              pushMatrix();
            translate(x,y,t);
              
             rect(0,0,1,1); 
               popMatrix();
                
         }
       }
     }
         //println("end");
         
  
          
          

  
  
  
popMatrix();
   

       


  


>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}




<<<<<<< HEAD
=======
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff








<<<<<<< HEAD


void o_setup() {

=======
 
void o_setup() {
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  ellipseMode(CENTER);


<<<<<<< HEAD

  Window_Offset = 0;
  WindowCode=0;


  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 0);
}




float grid_Offset = 0;

float v_offset = 0;


void o_draw() {
  int gridWidth =fader5;


  colorMode(RGB, 255);
  background(0);


=======
    
Window_Offset = 0;
WindowCode=0;


   Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,0);
  

   
  

  
  
}




  float grid_Offset = 0;
 
  float v_offset = 0;
  

void o_draw() {
   int gridWidth =fader5;
  
  
    colorMode(RGB, 255);
  background(0);

  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  zra+=0.001*(-128+fader2)/50.0f;
  yra+=0.001*(-128+fader3)/50.0f;
  xra+=0.001*(-128+fader4)/50.0f;
<<<<<<< HEAD
  pushMatrix();

  translate(1200, 300, 0); 

  //      rotateX(zr);

  //  rotateY(yr);


  rotateZ(zra);

  strokeWeight(3);
  stroke(255, 255, 255);
  fill(255, 255, 255, 200);

  for (int i=-1200/gridWidth; i< 1200/gridWidth; i++) {
    rect(i*gridWidth, -1200, fader1/10.0f, 2400);
  }  

  for (int i=-1200/gridWidth; i< 1200/gridWidth; i++) {
    rect(-1200, i*gridWidth, 2400, fader1/10.0f);
  }  




  v_offset+=0.5;
  if (v_offset > gridWidth) {
    v_offset = 0;
  }

  grid_Offset+=1;
  if (grid_Offset > gridWidth) {
    grid_Offset = 0;
  }



  popMatrix();






  world.step();

  world.draw();
}


=======
   pushMatrix();
   
   translate(1200,300, 0); 
   
    //      rotateX(zr);
        
     //  rotateY(yr);
        
        
        rotateZ(zra);
  
      strokeWeight(3);
     stroke(255,255,255);
      fill(255,255,255,200);
      
    for(int i=-1200/gridWidth; i< 1200/gridWidth;i++){
    rect(i*gridWidth, -1200, fader1/10.0f, 2400);
  }  
  
   for(int i=-1200/gridWidth; i< 1200/gridWidth;i++){
    rect(-1200, i*gridWidth, 2400, fader1/10.0f);
  }  
  
  
          
          
  v_offset+=0.5;
  if(v_offset > gridWidth){
      v_offset = 0;
  }
  
  grid_Offset+=1;
  if(grid_Offset > gridWidth){
      grid_Offset = 0;
  }
  
  
  
   popMatrix();
   

  
       

    
  world.step();
  
  world.draw();
  


}
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff




<<<<<<< HEAD
=======
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff








<<<<<<< HEAD
void p_setup() {

=======
 
void p_setup() {
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  ellipseMode(CENTER);


<<<<<<< HEAD

  Window_Offset = 0;
  WindowCode=0;


  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 0);



  ArrayList BodyList = world.getBodies();
=======
    
Window_Offset = 0;
WindowCode=0;


   Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,0);
  

   
   ArrayList BodyList = world.getBodies();
   
 

  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
}





<<<<<<< HEAD
float zra = 0;
float yra = 0;
float xra = 0;

void p_draw() {
  colorMode(RGB, 255);
  sphereDetail(fader6/2);

  int gridWidth = fader5;

  background(0);


=======
  float zra = 0;
  float yra = 0;
  float xra = 0;
  
void p_draw() {
    colorMode(RGB, 255);
  sphereDetail(fader6/2);
  
  int gridWidth = fader5;
  
  background(0);

  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  zra+=0.001*(-128+fader2)/50.0f;
  yra+=0.001*(-128+fader3)/50.0f;
  xra+=0.001*(-128+fader4)/50.0f;
<<<<<<< HEAD

  pushMatrix();

  translate(1200, 300, -3650); 

  rotateX(xra);

  rotateY(yra);


  rotateZ(zra);

  strokeWeight(fader1);
  stroke(255, 255, 255);
  fill(0, 0, 0, 128);

  sphere(fader5*20);



  v_offset+=0.5;
  if (v_offset > gridWidth) {
    v_offset = 0;
  }

  grid_Offset+=1;
  if (grid_Offset > gridWidth) {
    grid_Offset = 0;
  }



  popMatrix();

  //MakeRainbowWindows((int)Window_Offset,WindowCode);
  //Window_Offset-=0.5;
  //if(Window_Offset < 1){
  //   Window_Offset = 10;
  //   WindowCode--;
  // }




  world.step();

  world.draw();
}





=======
  
   pushMatrix();
   
   translate(1200,300, -3650); 
   
        rotateX(xra);
        
       rotateY(yra);
        
        
        rotateZ(zra);
  
      strokeWeight(fader1);
     stroke(255,255,255);
      fill(0,0,0,128);
      
    sphere(fader5*20);
  
          
          
  v_offset+=0.5;
  if(v_offset > gridWidth){
      v_offset = 0;
  }
  
  grid_Offset+=1;
  if(grid_Offset > gridWidth){
      grid_Offset = 0;
  }
  
  
  
   popMatrix();
   
  //MakeRainbowWindows((int)Window_Offset,WindowCode);
  //Window_Offset-=0.5;
  //if(Window_Offset < 1){
 //   Window_Offset = 10;
 //   WindowCode--;
 // }
  
       

    
  world.step();
  
  world.draw();
  


}




  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff





void q_setup() {



  Fisica.init(this);

  world = new FWorld();
<<<<<<< HEAD
  world.setGravity(0, 0);



  FLine b = new FLine(2400, 0, 0, 0);
  world.add(b);
  b = new FLine(0, 600, 2400, 600);
  world.add(b);
}

void q_draw() {
  colorMode(RGB, 255);
  FCircle b;
  background(0);

  if ((frameCount % fader2) == 1) {
    b = new FCircle(random(fader1, fader1+50));



    b.setPosition((oscX), oscY);
    b.setStroke(255, 255, 255);
    b.setRotation(random(2*PI)); 
    b.setVelocity(random(-100, 100), random(-100, 100));
    b.setAngularVelocity(random(1, -1)); 

    b.setDamping(0.1);
    b.setFriction(0.1);
    b.setRestitution(0.8);


    b.setStrokeWeight(0);
    b.setFill(100+random(155), 255, 100+random(155));
=======
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
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
<<<<<<< HEAD
  // FCircle present;
  for (int i=0; i< BodyList.size (); i++) {
    if (BodyList.get(i) instanceof FCircle) {
      if (((FBody)(BodyList.get(i))).getY()<-100 || ((FBody)(BodyList.get(i))).getY()>800 || ((FBody)(BodyList.get(i))).getX()<-100 || ((FBody)(BodyList.get(i))).getX()>2500)
        world.remove(       (FBody)BodyList.get(i)      );
    }
  }


=======
 // FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
       if (((FBody)(BodyList.get(i))).getY()<-100 || ((FBody)(BodyList.get(i))).getY()>800 || ((FBody)(BodyList.get(i))).getX()<-100 || ((FBody)(BodyList.get(i))).getX()>2500)
           world.remove(       (FBody)BodyList.get(i)      );
    }
 }
 
 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}

/*
void keyPressed() {
<<<<<<< HEAD
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


=======
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
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff







<<<<<<< HEAD
void r_setup() {


=======


void r_setup() {
  
   
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff


  Fisica.init(this);

  world = new FWorld();
<<<<<<< HEAD
  world.setGravity(0, 0);



  FCircle b;
  for (int i=0; i< 125; i++) {

    b = new FCircle( random(fader1/10.0, fader1/5.0));


=======
  world.setGravity(0,0);



   FCircle b;
  for(int i=0; i< 125; i++){
 
      b = new FCircle( random(fader1/10.0,fader1/5.0));
    
   
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
    //b.setDrawable(false);
    b.setPosition(random(2400), 1);
    b.setStroke(0);
    b.setStrokeWeight(0);
    b.setFill(255);
    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(1);
<<<<<<< HEAD
    b.setVelocity(random(-100, 100), random(-100, 100));
    world.add(b);
  }



  b = new FCircle(60);


  //b.setDrawable(false);
  b.setPosition(random(2400), 1);
  b.setStroke(0);
  b.setStrokeWeight(0);

  b.setFill(255, 230, 230);



  b.setDensity(0.007);
  b.setDamping(0);
  b.setFriction(0);
  b.setRestitution(1);
  b.setVelocity(random(-100, 100), random(-100, 100));
  world.add(b);



=======
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
  
  
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  //remover = new FBox(2068, 20);
  //remover.setPosition(1024, height+40);
  //remover.setStatic(true);
  //remover.setFill(0);
  //remover.setRestitution(0);
  //world.add(remover);
<<<<<<< HEAD

  fill(0, 0, 0);
  rect(0, 0, 2400, 600);
}

void r_draw() {
  colorMode(RGB, 255);

  fill(0, 0, 0, 5);
  rect(0, 0, 2400, 600);
  if ((frameCount % fader2) == 1) {
    fill(0, 0, 0, 10);
    rect(0, 0, 2400, 600);
  }



=======
  
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


  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  ArrayList BodyList = world.getBodies();



<<<<<<< HEAD



  FBody present;
  int k = 0;
  int m = 0;

  for (int i=0; i < BodyList.size (); i++) {
    present = (FBody)BodyList.get(i);


    if (present instanceof FCircle) {//ball

      if (((FCircle)present).getSize()>50) {
        present.setPosition(oscX, oscY);  
        present.setVelocity(0, 0);
      } else {

        if (present.getX() < 0) {
          present.setPosition(0, present.getY());
          present.setVelocity(-present.getVelocityX(), present.getVelocityY());
        }


        if (present.getX() > 2400) {
          present.setPosition(2400, present.getY());
          present.setVelocity(-present.getVelocityX(), present.getVelocityY());
        }


        if (present.getY() < 0) {
          present. setPosition(present.getX(), 0);
          present.setVelocity(present.getVelocityX(), -present.getVelocityY());
        }

        if (present.getY() > 600) {
          present. setPosition(present.getX(), 600);
          present.setVelocity(present.getVelocityX(), -present.getVelocityY());
        }
      }
    }


    // points[k][0] = i;
    //points[k][1] = i;

    // }
  }



=======
    

    
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


 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  world.step();
  world.draw();
  //println(world.getBodies());
}






void t_setup() {




  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 150);
<<<<<<< HEAD
}

void t_draw() {

  colorMode(RGB, 255);

  fill(0, 0, 0, 10);
  rect(0, 0, 2400, 600);

  //if ((frameCount % 2) == 1) {

  for (int j=0; j< 2; j++) {
    FCircle b = new FCircle(random(5, 10));

    b.setPosition(random(2400), 0);
    b.setStroke(0);

    b.setVelocity(0, 100); 


    //b.attachImage(snowflake);
    //b.setRestitution(1);
    b.setStrokeWeight(0);
    b.setFill(100+random(100), 100+random(100), 255);
=======



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
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
<<<<<<< HEAD
  // FCircle present;
  for (int i=0; i< BodyList.size (); i++) {
    if (BodyList.get(i) instanceof FCircle) {
      if (((FBody)(BodyList.get(i))).getY()>=600)
        world.remove(       (FBody)BodyList.get(i)      );
    }
  }


=======
 // FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
       if (((FBody)(BodyList.get(i))).getY()>=600)
           world.remove(       (FBody)BodyList.get(i)      );
    }
 }
 
 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}

/*
void keyPressed() {
<<<<<<< HEAD
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



=======
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
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff






<<<<<<< HEAD
void u_setup() {



=======



void u_setup() {
  
      
      
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff





  Fisica.init(this);

  world = new FWorld();
<<<<<<< HEAD
  world.setGravity(0, 0);



  FCircle b;
  for (int i=0; i< 125; i++) {

    b = new FCircle(fader1/10+random(fader1/10));


=======
  world.setGravity(0,0);



   FCircle b;
  for(int i=0; i< 125; i++){
 
      b = new FCircle(fader1/10+random(fader1/10));
    
   
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
    //b.setDrawable(false);
    b.setPosition(random(2400), 1);
    b.setStroke(0);
    b.setStrokeWeight(0);
    b.setFill(255);
    b.setDamping(1);
    b.setFriction(1);
    b.setRestitution(1);
<<<<<<< HEAD
    b.setVelocity(random(-100, 100), random(-100, 100));
    world.add(b);
  }








  b = new FCircle(100);

  b.setFill(255, 0, 255);


  b.setPosition(random(2400), 1);
  b.setStroke(0);
  b.setStrokeWeight(0);


  b.setDamping(0);
  b.setFriction(0);
  b.setRestitution(1);
  b.setVelocity(random(-100, 100), random(-100, 100));
  world.add(b);



=======
    b.setVelocity(random(-100,100),random(-100,100));
    world.add(b);
  }
  
  
    
    
      
    
   
  
    b = new FCircle(100);
          
     b.setFill(255,0,255);
    
    
    b.setPosition(random(2400), 1);
    b.setStroke(0);
    b.setStrokeWeight(0);
    
    
    b.setDamping(0);
    b.setFriction(0);
    b.setRestitution(1);
    b.setVelocity(random(-100,100),random(-100,100));
    world.add(b);
  
  
  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff

  //remover = new FBox(2068, 20);
  //remover.setPosition(1024, height+40);
  //remover.setStatic(true);
  //remover.setFill(0);
  //remover.setRestitution(0);
  //world.add(remover);
<<<<<<< HEAD

  fill(0, 0, 0);
  rect(0, 0, 2400, 600);
}

void u_draw() {

  colorMode(RGB, 255);

  fill(0, 0, 0, 10);
  rect(0, 0, 2400, 600);



=======
  
  fill(0,0,0);
  rect(0,0,2400,600);

}

void u_draw() {
  
      colorMode(RGB, 255);
      
   fill(0,0,0,10);
  rect(0,0,2400, 600);


  
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  ArrayList BodyList = world.getBodies();



<<<<<<< HEAD



  FBody present;
  int k = 0;
  int m = 0;

  for (int i=0; i < BodyList.size (); i++) {
    present = (FBody)BodyList.get(i);




    if (present instanceof FCircle) {//ball

      if (((FCircle)present).getSize()>60) {
        present.setPosition(oscX, oscY);
        present.setVelocity(0, 0);
      } else {
        ((FBody)(BodyList.get(i))).adjustVelocity(random(-20, 20), random(-20, 20));

        if (present.getX() < 0) {
          present.setPosition(0, present.getY());
          present.setVelocity(-present.getVelocityX(), present.getVelocityY());
        }


        if (present.getX() > 2400) {
          present.setPosition(2400, present.getY());
          present.setVelocity(-present.getVelocityX(), present.getVelocityY());
        }


        if (present.getY() < 0) {
          present. setPosition(present.getX(), 0);
          present.setVelocity(present.getVelocityX(), -present.getVelocityY());
        }

        if (present.getY() > 600) {
          present. setPosition(present.getX(), 600);
          present.setVelocity(present.getVelocityX(), -present.getVelocityY());
        }
      }
    }
  }










=======
    

    
   FBody present;
   int k = 0;
   int m = 0;
   
  for(int i=0; i < BodyList.size(); i++){
        present = (FBody)BodyList.get(i);
        

        
        
        if(present instanceof FCircle){//ball
        
          if(((FCircle)present).getSize()>60){
               present.setPosition(oscX,oscY);
               present.setVelocity(0,0); 
          
        } else {
         ((FBody)(BodyList.get(i))).adjustVelocity(random(-20,20),random(-20,20));
         
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
          
          
          
        
    
        } 
      }
    
  }

  



 

  

 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  world.step();
  world.draw();
  //println(world.getBodies());
}


/*
void keyPressed() {
<<<<<<< HEAD
 try {
 world.clear(); 
 buildWindows();
 
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
=======
  try {
   world.clear(); 
   buildWindows();

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
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff



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
<<<<<<< HEAD
  world.setGravity(100, 0);
  //snowflake = loadImage ("snowflake_small.png");
}

void w_draw() {
  colorMode(RGB, 255);

  background(0);

  if ((frameCount % fader2) == 1) {
    FCircle b = new FCircle(random(fader1, fader1+40));


    b.setPosition(-20, random(600));
    b.setStroke(255, 255, 255);
    b.setRotation(random(2*PI)); 
    b.setVelocity(100, random(-400, 400));
    b.setAngularVelocity(random(1, -1)); 

    b.setDamping(0.2);
    b.setFriction(0.2);
    b.setRestitution(1);


    b.setStrokeWeight(fader3/2.0f);
    b.setFill(random(255), random(255), random(255));
=======
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
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
<<<<<<< HEAD
  // FCircle present;
  for (int i=0; i< BodyList.size (); i++) {
    if (BodyList.get(i) instanceof FCircle) {
      if (((FBody)(BodyList.get(i))).getY()<-100 || ((FBody)(BodyList.get(i))).getY()>700 || ((FBody)(BodyList.get(i))).getX()<-100 || ((FBody)(BodyList.get(i))).getX()>2500)
        world.remove(       (FBody)BodyList.get(i)      );
    }
  }


=======
 // FCircle present;
 for(int i=0; i< BodyList.size(); i++){
    if(BodyList.get(i) instanceof FCircle){
       if (((FBody)(BodyList.get(i))).getY()<-100 || ((FBody)(BodyList.get(i))).getY()>700 || ((FBody)(BodyList.get(i))).getX()<-100 || ((FBody)(BodyList.get(i))).getX()>2500)
           world.remove(       (FBody)BodyList.get(i)      );
    }
 }
 
 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}

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
<<<<<<< HEAD
}

void y_draw() {

  colorMode(RGB, 255);

  fill(0, 0, 0, 2);
  rect(0, 0, 2400, 600);

  if ((frameCount % 20) == 1) {
    fill(0, 0, 0, 9);
    rect(0, 0, 2400, 600);
  }

  //for(int j=0; j< 2; j++){
  FCircle b = new FCircle(random(fader1, fader1*2));

  b.setPosition(oscX, 600);
  b.setStroke(0);

  b.setVelocity(random(-20, 20), -20); 

  b.setDamping(1);
  b.setFriction(1);
  b.setRestitution(1);


  //b.attachImage(snowflake);
  //b.setRestitution(1);
  b.setStrokeWeight(0);
  //b.setFill(200+random(55),255,150+random(105));
  b.setFill(fader4, fader5, fader6);
  world.add(b);
  // }


  ArrayList BodyList = world.getBodies();
  // FCircle present;
  for (int i=0; i< BodyList.size (); i++) {
    if (BodyList.get(i) instanceof FCircle) {

      ((FBody)(BodyList.get(i))).adjustVelocity(random(-20, 20), random(-20, 20));


      if (((FBody)(BodyList.get(i))).getY()<0)
        world.remove(       (FBody)BodyList.get(i)      );
    }
  }


=======



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
 
 
>>>>>>> f498a6d44ea775f74e3f4cfe61647f640a4aa9ff
  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}

