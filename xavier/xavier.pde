PShader myShader;

String[] shaders;

int shaderI = 0;

void setup() {
    // set location - needs to be in setup()
 //size(2420, 600, OPENGL);
 size(displayWidth, displayHeight, OPENGL);
 shaders = new String[]{"complex.glsl", "twistydots.glsl", "moire.glsl",
         "colormoire.glsl",
         "verymoire.glsl",
         "dots.glsl"};
 myShader = loadShader(shaders[shaderI]);
}

void draw() {
  background(0);
  //println(millis());
  myShader.set("time", float(millis()));
  myShader.set("mouse", float(mouseX), height - float(mouseY));
  myShader.set("screen", float(width), float(height));
  shader(myShader, TRIANGLES);
  rect(0, 0, width, height);
}

void mousePressed() {
  shaderI++;
  shaderI %= shaders.length;
  myShader = loadShader(shaders[shaderI]);
}
