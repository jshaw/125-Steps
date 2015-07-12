




 
void o_setup() {
  

  ellipseMode(CENTER);


    
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

  

  zra+=0.001*(-128+fader2)/50.0f;
  yra+=0.001*(-128+fader3)/50.0f;
  xra+=0.001*(-128+fader4)/50.0f;
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




  



