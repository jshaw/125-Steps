


void TreePattern3_setup() {


LoadLines();

  
timer= 0;



}

void TreePattern3_draw() {
  
  
  background(0);
   timer  += fader2/1000.0;
    
    
  colorMode(RGB, 1);
  
    
     for (int i = 0; i < xl.length-1; i++){
      
        strokeWeight(0);
  
         
        if((abs(sin(timer + i*0.3*(fader1/128.0))*50))%2 < 1){
         fill(1);  
        } else {
          fill(0); 
        }
        
        rect(xl[i], 0,xl[i+1]-xl[i], 600);
        
       
       }
       
      
   }
   
    

