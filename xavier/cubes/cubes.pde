float[][] cubeD;
float[][] cubeV;

int cubeSize;
int countX;
int countY;
int cubeH;
float ratio = sqrt(3.0)/2.0;

void initCubes(int size) {
  cubeSize = size;
  cubeH = size*20;
  countX = width/size + 1;
  countY = int(height/size/ratio + 2);
  cubeD = new float[countY][countX];
  cubeV = new float[countY][countX];
  for (int x = 0; x < countX; x++) {
    for (int y = 0; y < countY; y++) {
      cubeD[y][x] = 0;
      cubeV[y][x] = 0;
    }
  }
}

void drawCubes() {
  pushMatrix();
  for (int yi = 0; yi < countY; yi++) {
    for (int xi = 0; xi < countX; xi++) {
        float dx = xi*cubeSize;
        float dy = yi*cubeSize*ratio;
        dx += yi%2 * cubeSize/2;
        dy += cubeD[yi][xi];
        pushMatrix();
        translate(dx, dy);
        
        beginShape();
        fill(255);
        noStroke();
        vertex(-cubeSize/2, -cubeSize/4);
        vertex(0, -cubeSize/2);
        vertex(cubeSize/2, -cubeSize/4);
        vertex(0,0);
        endShape();        
        
        beginShape();
        fill(160);
        vertex(0,0);
        vertex(cubeSize/2, -cubeSize/4);
        vertex(cubeSize/2, cubeSize/4 + cubeH);
        vertex(0, cubeSize/2 + cubeH);
        endShape();
        
        beginShape();
        fill(0);
        vertex(0,0);
        vertex(0, cubeSize/2 + cubeH);
        vertex(-cubeSize/2, cubeSize/4 + cubeH);
        vertex(-cubeSize/2, -cubeSize/4);
        endShape();
        
        popMatrix();
    }
  } 
  popMatrix();
}

void stepCubes() {
  for (int yi = 0; yi < countY; yi++) {
    for (int xi = 0; xi < countX; xi++) {
      float d = cubeD[yi][xi];
      float f = 0.0;
      
      int x00 = xi-1, y00 = yi-1;
      int x10 = xi,   y10 = yi-1;
      int x01 = xi-1, y01 = yi+1;
      int x11 = xi,   y11 = yi+1;
      if (yi%2 == 1) {
        x00++; x01++; x10++; x11++;
      }
      if (x00 >= 0 && y00 >= 0) {
        f += cubeD[y00][x00] - d;
      }
      if (x01 >= 0 && y01 < countY) {
        f += cubeD[y01][x01] - d;
      }
      if (x10 < countX && y10 >= 0) {
        f += cubeD[y10][x10] - d;
      }
      if (x11 < countX && y11 <countY) {
        f += cubeD[y11][x11] - d;
      }
      f -= cubeD[yi][xi]*0.2;
      cubeV[yi][xi] += f;
      cubeV[yi][xi] *= 0.97;
    } 
  }
  for (int yi = 0; yi < countY; yi++) {
    for (int xi = 0; xi < countX; xi++) {
      cubeD[yi][xi] += cubeV[yi][xi]*0.1;
    } 
  }
}

void setup() {
  size(displayWidth, displayHeight, OPENGL);
  initCubes(64);
}

float tSin = 0.0;
void draw() {
  background(0);
  stepCubes();
  tSin += mouseX;
  cubeD[10][10] = mouseY * sin(tSin/3000.0);
  drawCubes();
}
