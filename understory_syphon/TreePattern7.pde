

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


