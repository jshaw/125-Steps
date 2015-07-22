float p[][];
float v[][];
int target = 0;
int boxSize;

int dgcountX;
int dgcountY;

void initDiags(int size) {
  boxSize = size;
  print("WIDTH: " + width);
  dgcountX = width/boxSize;
  dgcountY = height/boxSize;
  p = new float[dgcountY][dgcountX];
  v = new float[dgcountY][dgcountX];
  for (int x = 0; x < dgcountX; x++) {
    for (int y = 0; y < dgcountY; y++) {
      v[y][x] = 0;
      p[y][x] = 0;
    }
  }
}

void step() {
  for (int x = 0; x < dgcountX; x++) {
    for (int y = 0; y < dgcountY; y++) {
      float f = 0.0;
      if (x > 0) {
        f += p[y][x-1];
      }
      if (y > 0) {
        f += p[y-1][x];
      }
      if (x < dgcountX-1) {
        f += p[y][x+1];
      }
      if (y < dgcountY - 1) {
        f += p[y+1][x];
      }
      f -= 4*p[y][x];
      v[y][x] += f;
      v[y][x] *= 0.97;
    }
  }
  for (int x = 0; x < dgcountX; x++) {
    for (int y = 0; y < dgcountY; y++) {
      p[y][x] += v[y][x]*0.01;
    }
  }
}

float expit(float x) {
  if (x < 0) {
    x = exp(x);
    return x / (1.f + x);
  }
  else {
    return 1.f / (1.f + exp(-x));
  }
}
void paint() {
  colorMode(RGB, 255);
  stroke(255);
  strokeWeight(10);
  for (int xi = 0; xi < dgcountX; xi++) {
    for (int yi = 0; yi < dgcountY; yi++) {
      float x = xi*boxSize;
      float y = yi*boxSize;
      float thisP = p[yi][xi];
      float theta = atan(thisP)/2;
      
      pushMatrix();
      translate(x,y);
      rotate(theta);

      line(0, boxSize/2, 0, -boxSize/2);
      popMatrix();
    }
  }
}

void dg_setup() {
  //size(displayWidth, displayHeight, OPENGL);
  initDiags(64);
  //p[10][10] = 100;
}

float dgtSin = 0.0;
void dg_draw() {
  background(0);
  step();
  dgtSin += fader2;
  int whichX = int(normX*dgcountX);
  int whichY = int(normY*dgcountY);
  p[whichY][whichX] = fader3 * sin(dgtSin/1000.0);
  paint();
}
