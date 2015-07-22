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
    
    



void TreePattern2_setup() {
  LoadLines();
  timer= 0;
}

void TreePattern2_draw() {
  background(0);
   timer  += fader2/1000.0;
  colorMode(RGB, 1);
  for (int i = 0; i < xl.length-1; i++) {
    strokeWeight(0);
    fill(1);
    rect(xl[i], 300+300*sin(timer+i*0.3*(fader3/128.0f)), xl[i+1]-xl[i], 600);
  }
}





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
   
    



void TreePattern6_setup() {
  LoadLines();
  timer= 0;
}

void TreePattern6_draw() {
  background(0);
   timer  += fader2/1000.0;
  colorMode(HSB, 100);
  for (int i = 0; i < xl.length-1; i++) {
    strokeWeight(0);
    fill( (1 +sin(timer*4+i*8)) * 50, (fader3/2.55f), 100);
    rect(xl[i], 300+300*sin(timer*2.0+i*0.3*(fader1/128.0f)), xl[i+1]-xl[i], 600);
  }
}




void TreePattern7_setup() {
  LoadLines();
  timer= 0;
}

void TreePattern7_draw() {
  background(0);
  timer  += fader2/1000.0;
  colorMode(RGB, 1);
  for (int i = 0; i < xl.length-1; i++) {
    strokeWeight(0);
    fill(1);
    rect(xl[i], 300+100*(sin(timer+i*0.3)+sin(-timer*2.0+i)+sin(timer*3.0+i*0.1)+sin(-timer*4.0+i*3.0)), xl[i+1]-xl[i]-fader4/2, fader3*2);
  }
}




void TreePattern8_setup() {
  LoadLines();
  timer= 0;
}

void TreePattern8_draw() {
  background(0);
   timer  += fader2/1000.0;
  colorMode(RGB, 1);
  for (int i = 0; i < xl.length-1; i++) {
    strokeWeight(0);
    fill(1);
    rect(xl[i], 300+100*(sin(timer+i*0.3)+sin(-timer*2.0+i)+sin(timer*3.0+i*0.1)+sin(-timer*4.0+i*3.0)), xl[i+1]-xl[i], 3000);
  }
}


