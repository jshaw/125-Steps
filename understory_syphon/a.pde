




 
void a_setup() {

  
}





  
  
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
   


}




  



