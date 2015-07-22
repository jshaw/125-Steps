




 
void p_setup() {
  

  ellipseMode(CENTER);


    
Window_Offset = 0;
WindowCode=0;


   Fisica.init(this);

  world = new FWorld();
  world.setGravity(0,0);
  

   
   ArrayList BodyList = world.getBodies();
   
 

  
}





  float zra = 0;
  float yra = 0;
  float xra = 0;
  
void p_draw() {
    colorMode(RGB, 255);
  sphereDetail(fader6/2);
  
  int gridWidth = fader5;
  
  background(0);

  

  zra+=0.001*(-128+fader2)/50.0f;
  yra+=0.001*(-128+fader3)/50.0f;
  xra+=0.001*(-128+fader4)/50.0f;
  
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




  



