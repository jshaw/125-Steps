/**
 *  Buttons and bodies
 *
 *  by Ricard Marxer
 *
 *  This example shows how to create a blob.
 */





//   PImage snowflake;



float timer;
void TreePattern1_setup() {


LoadLines();

  
timer= 0;



}

void TreePattern1_draw() {
    timer  += fader2/1000.0;
    
    
  colorMode(RGB, 2);
  
    
     for (int i = 0; i < xl.length-1; i++){
      
        strokeWeight(0);
  
      
        fill(1+sin(timer + i*0.3*(fader3/128.0f)));
        rect(xl[i], 0,xl[i+1]-xl[i], 600);
        
       
       }
      
   }
    
    

