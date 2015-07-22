PShader myShader;

String[] shaders;

int shaderI = 4;

void xs_setup() {
    // set location - needs to be in setup()
 //size(2420, 600, OPENGL);
 size(displayWidth, displayHeight, OPENGL);
 shaders = new String[]{"complex.glsl", "complex2.glsl", "twistydots.glsl", "moire.glsl",
         "colormoire.glsl",
         "verymoire.glsl",
         "dots.glsl"};
 myShader = loadShader(shaders[shaderI]);
}

void xs_draw() {
  background(0);
  //println(millis());
  myShader.set("time", float(millis()));
  myShader.set("mouse", float(oscX), float(oscY));
  myShader.set("screen", float(1200), float(800));
  shader(myShader, TRIANGLES);
  rect(0, 0, width, height);
}

void xs_mousePressed() {
  shaderI++;
  shaderI %= shaders.length;
  myShader = loadShader(shaders[shaderI]);
}
