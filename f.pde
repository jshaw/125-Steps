




 
void f_setup() {
  
  

  ColorCode = 0;
  Stripe_Offset = 0;
  Window_Offset = 0;
  WindowCode = 0;  
  
  
  smooth();
  ellipseMode(CENTER);



}


float rotx = 0.5;

  
void f_draw() {
  
  rotx = fader6/50.0;
  int Stripe_Width = fader1;
      colorMode(HSB, 100);
  background(0);
  PVector v0;
   // rotx+=0.0001;
     strokeWeight(fader1/5);
     stroke(0,0,0);

   
      pushMatrix();
   
   translate(1024,384, 0); 
   
        rotateZ(rotx);
        

  for(int i=-100; i< 100;i++){
    
     fill(0,0,((abs(i-ColorCode)*10))%100);
     
    rect(i*Stripe_Width+Stripe_Offset, -1000, Stripe_Width, 2000);
    
    
    
    
  }  
  popMatrix();
  
  
  Stripe_Offset+=2;
  if(Stripe_Offset > Stripe_Width){
      Stripe_Offset = 0;
      ColorCode++;
    
  }

  Window_Offset-=0.5;
  if(Window_Offset < 1){
    Window_Offset = 10;
    WindowCode--;
  }
  
       

    
  
  


}




  



