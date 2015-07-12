

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


