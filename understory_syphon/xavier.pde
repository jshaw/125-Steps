PShader myShader;

String[] shaders;

int shaderI = 0;

void xs_setup() {
    // set location - needs to be in setup()
 //size(2420, 600, OPENGL);
 //size(displayWidth, displayHeight, OPENGL);
 shaders = new String[]{"complex.glsl", "complex2.glsl", "twistydots.glsl", "moire.glsl",
         "colormoire.glsl",
         "verymoire.glsl",
         "dots.glsl"};
 myShader = loadShader(shaders[shaderI]);
}

void xs_draw() {
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

