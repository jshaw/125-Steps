

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


