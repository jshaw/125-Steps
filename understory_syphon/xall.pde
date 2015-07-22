/** SHADERS **/



Scene shader = new Scene() {
  PShader myShader;
  String[] shaders;
  int shaderI = 0;
  void setup() {
    // set location - needs to be in setup()
   //size(2420, 600, OPENGL);
   //size(displayWidth, displayHeight, OPENGL);
   shaders = new String[]{"complex.glsl", "complex2.glsl", "twistydots.glsl", "moire.glsl",
           "colormoire.glsl",
           "verymoire.glsl",
           "dots.glsl"};
   myShader = loadShader(shaders[shaderI]);
  }
  
  void draw() {
    int whichI = floor(fader2 * shaders.length / 255.0);
    if (whichI != shaderI) {
      shaderI = whichI;
      myShader = loadShader(shaders[shaderI]);
    }
    background(0);
    //println(millis());
    myShader.set("time", float(millis()));
    myShader.set("mouse", float(oscX), float(oscY));
    myShader.set("norm", normX, normY);
    println("Fader1: " + fader1);
    myShader.set("fader1", float(fader1));
    myShader.set("fader2", fader2);
    myShader.set("fader3", float(fader3));
    myShader.set("fader4", fader4);
    myShader.set("fader5", fader5);
    myShader.set("fader6", fader6);
    myShader.set("screen", float(width), float(height));
    shader(myShader, TRIANGLES);
    rect(0, 0, width, height);
  }
};

/** ISO CUBES **/

Scene cubes = new Scene() {
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
      //println("Y: " + yi);
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
    //size(displayWidth, displayHeight, OPENGL);
    initCubes(64);
  }
  
  float tSin = 0.0;
  void draw() {
    colorMode(RGB, 255);
    background(0);
    stepCubes();
    tSin += fader2;
    int whichX = int(normX*countX);
    int whichY = int(normY*countY);
    cubeD[whichY][whichX] = fader3 * sin(tSin/1000.0);
    drawCubes();
  }
};

/** DIAGS **/
Scene diags  = new Scene() {
  float p[][];
  float v[][];
  int target = 0;
  int boxSize;
  
  int countX;
  int countY;
  
  void initDiags(int size) {
    boxSize = size;
    print("WIDTH: " + width);
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
    colorMode(RGB, 255);
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
    //size(displayWidth, displayHeight, OPENGL);
    initDiags(64);
    //p[10][10] = 100;
  }
  
  float tSin = 0.0;
  void draw() {
    background(0);
    step();
    tSin += fader2;
    int whichX = int(normX*countX);
    int whichY = int(normY*countY);
    p[whichY][whichX] = fader3 * sin(tSin/1000.0);
    paint();
  }
};


