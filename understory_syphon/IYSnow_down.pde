void snow_down_setup() {


  Fisica.init(this);

  world = new FWorld();
  world.setGravity(0, 100);
  //snowflake = loadImage ("snowflake_small.png");

  //buildRemover();


  FLine b = new FLine(0, 600, 2400, 600);


  world.add(b);

  //  b = new FLine(2400,600,2400,0);
  //    world.add(b);
}

void snow_down_draw() {
  colorMode(RGB, 255);
  background(0);

  if ((frameCount % fader2) == 1) {
    FCircle b = new FCircle(random(1+fader1, 20+fader1));



    b.setPosition(oscX, -50);
    b.setStroke(0);
    //b.attachImage(snowflake);
    //b.setRestitution(1);
    b.setStrokeWeight(0);
    b.setFill(255, 255, 255);
    b.setVelocity(random(-5, 5), random(-5, 5));
    world.add(b);
  }


  ArrayList BodyList = world.getBodies();
  // FCircle present;
  for (int i=0; i< BodyList.size (); i++) {
    if (BodyList.get(i) instanceof FCircle) {
      if (((FBody)(BodyList.get(i))).getX()>=2400 || ((FBody)(BodyList.get(i))).getX()<=0)
        world.remove(       (FBody)BodyList.get(i)      );
    }
  }


  //remover.setSensor(1);
  world.step();
  world.draw();
  //println(world.getBodies());
}

Scene snowDown = new Scene("Snow down") {
  void setup() {
    snow_down_setup();
  }
  void draw() {
    snow_down_draw();
  }
};

