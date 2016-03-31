Vst vst;
Scene theScene;

void settings() {
  vst = new Vst(this, createSerial());
  theScene = new Scene();
  size(theScene.scene_width(), theScene.scene_height(), P2D);
  pixelDensity(displayDensity());
}

void setup() {
  frameRate(30);
}

void draw() {
  background(0);
  theScene.update();
  theScene.display();
  vst.display();
}