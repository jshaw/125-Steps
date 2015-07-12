




 
void j_setup() {
  

  ellipseMode(CENTER);


    
Window_Offset = 0;
WindowCode=0;


   Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,0);
  

   
   ArrayList BodyList = world.getBodies();
   
 
sphereDetail(80);
  
  
}






  
void j_draw() {
    colorMode(RGB, 255);
  
  
  
  background(0);

  

  zra+=0.001*(-128+fader2)/20.0f;
  yra+=0.001*(-128+fader3)/20.0f;
  xra+=0.001*(-128+fader4)/20.0f;
  
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
   

       


  


}




  



