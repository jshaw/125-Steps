


void TreePattern5_setup() {


LoadLines();

  
timer= 0;



}

void TreePattern5_draw() {
  
  
  background(0);
    timer  += fader2/1000.0;
    
    
  colorMode(RGB, 1);
  
    
     for (int i = 0; i < xl.length-1; i++){
      
        strokeWeight(20);
        stroke(1);
        fill(1);
        textSize(fader1);
       pushMatrix();
       // translate((xl[i+1]+xl[i])/2, 700+(timer+i*6)%100*15);
       
       translate((xl[i+1]+xl[i])/2,700-(timer+i*6)%45*20);
        rotateZ(1.57);
 
        
        text("125",-100,50);
        
 
        popMatrix();
        
       
       }
       
      
   }
   
    

