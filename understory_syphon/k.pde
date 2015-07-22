





void k_setup() {
}







void k_draw() {
  colorMode(RGB, 255);
  background(0);
      int x=0, y=0;


  zra+=0.001*(-128+fader2)/50.0f;
  yra+=0.001*(-128+fader3)/50.0f;
  xra+=0.001*(-128+fader4)/50.0f;



  for (int j = 0; j< 3; j++) {
    pushMatrix();

    if ( j == 0) {
      translate(800, 300, 300);
         rotateX(zra);
         rotateZ(xra);
    
    } 
   else if(j==1) {
      translate(1600, 300, 300);
         rotateX(yra);
         rotateZ(yra);
    } else {
       translate(1200,300,300); 
          rotateX(xra);
          rotateZ(zra);
    }


 


    fill(255, 255, 255);
    noStroke();


    for ( y = -200; y< 200; y+=10)
      for ( x = -200; x<200; x+=10) {
        pushMatrix();
        translate(x, y, 0);

        rect(0, 0, fader1/5, fader1/5); 
        popMatrix();
      }
    popMatrix();
  }

  
}







