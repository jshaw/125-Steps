






void i_setup() {
  
      
      
      


  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,0);



   FCircle b;
  for(int i=0; i< 125; i++){
 
      b = new FCircle(5);
    
   
    b.setDrawable(false);
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
  

  //remover = new FBox(2048, 20);
  //remover.setPosition(1024, height+40);
  //remover.setStatic(true);
  //remover.setFill(0);
  //remover.setRestitution(0);
  //world.add(remover);
  
  

}

void i_draw() {
  colorMode(HSB, 100);
  background(0);



  
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
  

 
  world.step();
  world.draw();
  //println(world.getBodies());
}

