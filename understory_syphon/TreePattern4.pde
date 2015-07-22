


void TreePattern4_setup() {


LoadLines();

  
timer= 0;



}

void TreePattern4_draw() {
  
  
  background(0);
    timer  += fader2/1000.0;
    
    
  colorMode(RGB, 1);
  
    
     for (int i = 0; i < xl.length-1; i++){
      
        strokeWeight(fader1);
        stroke(1);
        fill(1);
       // line(xl[i  ]      , 700-(timer+i*6)%100*10,             (xl[i+1]+xl[i])/2, 700-(timer+i*6)%100*15);
       // line(xl[i+1]      , 700-(timer+i*6)%100*10,             (xl[i+1]+xl[i])/2, 700-(timer+i*6)%100*15);
         
         triangle(xl[i  ]      , 700-(timer+i*6)%100*10, xl[i+1]      , 700-(timer+i*6)%100*10, (xl[i+1]+xl[i])/2, 700-(timer+i*6)%100*15);
         
        //line(xl[i+1]-xl[i], (timer+i)%100*10,             (xl[i+1]-xl[i])/2,(timer+i)%100*20);
      
      
       //   line(xl[i], (timer+i)*10, l[i+1]-xl[i],(timer+i)*20)
         
         
       
        
        //rect(xl[i], 0,xl[i+1]-xl[i], 600);
        
       
       }
       
      
   }
   
    

