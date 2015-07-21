float p[][];
float v[][];
int target = 0;
int boxSize;

int countX;
int countY;

void initDiags(int size) {
  boxSize = size;
  countX = width/boxSize;
  countY = height/boxSize;
  p = new float[countY][countX];
  v = new float[countY][countX];
  for (int x = 0; x < countX; x++) {
    for (int y = 0; y < countY; y++) {
      v[y][x] = 0;
      p[y][x] = 0;
    }
  }
}

void step() {
  for (int x = 0; x < countX; x++) {
    for (int y = 0; y < countY; y++) {
      float f = 0.0;
      if (x > 0) {
        f += p[y][x-1];
      }
      if (y > 0) {
        f += p[y-1][x];
      }
      if (x < countX-1) {
        f += p[y][x+1];
      }
      if (y < countY - 1) {
        f += p[y+1][x];
      }
      f -= 4*p[y][x];
      v[y][x] += f;
      v[y][x] *= 0.97;
    }
  }
  for (int x = 0; x < countX; x++) {
    for (int y = 0; y < countY; y++) {
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
  stroke(255);
  strokeWeight(10);
  for (int xi = 0; xi < countX; xi++) {
    for (int yi = 0; yi < countY; yi++) {
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

void setup() {
  size(displayWidth, displayHeight, OPENGL);
  initDiags(64);
  //p[10][10] = 100;
}

float tSin = 0.0;
void draw() {
  background(0);
  step();
  tSin += mouseX;
  p[10][10] = mouseY * sin(tSin/3000.0);
  paint();
}
