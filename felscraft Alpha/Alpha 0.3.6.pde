int[] coords = {150, 150};
final String version = "Alpha 0.3.6 - Processing test";
int[] randomIron = {(int)random(1, 5), (int)random(1, 3), (int)random(1, 4), (int)random(1, 2)};
int[] randomGold = {(int)random(1, 7), (int)random(1, 5), (int)random(1, 4), (int)random(1, 3)};
int[] randomDiamond = {(int)random(1, 12), (int)random(1, 2), (int)random(1, 3), (int)random(1, 5)};

void setup() {
  size(640, 320);//640|320
  smooth(3);
  surface.setTitle("felsCraft game "+version);
  surface.setResizable(false);
  background(#7fc9fa);
  strokeWeight(3);
  frameRate(60);
  int y = 300;
  int x = 1;
  int cw = 1, test = 0;
  int[] weidth = new int[33];
  setColor(255, 0, 0);
  show(150, 150);
  while (test < 33) {
    weidth[test] =(int) random(2, 12);
    ++test;
  }
  test = 0;
  for (int i = 0; i != 33; i++) {
    for (test = 0; test < weidth[i]; test++) {
      if (cw >= 1) {
        setColor(13, 11, 13);
      }
      if (cw >= random(4, 6)) {
        setColor(0, 153, 0);
      }
      if (cw >= random(9, 10)) {
        setColor(256, 256, 256);
      }
      //Generation the ores
      //Iron
      if (cw<=8 && randomIron[0] == randomIron[1] && randomIron[2] == randomIron[3]) {
        setColor(132, 141, 148);
      }
      //Gold
      if (cw <= 6 && randomGold[0] == randomGold[1] && randomGold[2] == randomGold[3]) {
        setColor(255, 220, 15);
      }
      //Diamond
      if (cw <= 4 && randomDiamond[0] == randomDiamond[1] && randomDiamond[2] == randomDiamond[3]) {
        setColor(54, 171, 186);
      }
      show(x, y);
      y-=20;
      ++cw;
      randomIron[0]=(int)random(1, 5);
      randomIron[1]=(int)random(1, 3);
      randomIron[2]=(int)random(1, 3);
      randomIron[3]=(int)random(1, 2);
      randomGold[0]=(int)random(1, 7);
      randomGold[1]=(int)random(1, 5);
      randomGold[2]=(int)random(1, 4);
      randomGold[3]=(int)random(1, 3);
      randomDiamond[0]=(int)random(1, 12);
      randomDiamond[1]=(int)random(1, 2);
      randomDiamond[2]=(int)random(1, 3);
      randomDiamond[3]=(int)random(1, 5);
    }
    cw=1;
    y=300;
    x+=20;
  }
  text("felsCraft "+version, 510, 300);
}

void draw() {
  stroke(256, 256, 256);
  fill(256, 256, 256);
  text("felsCraft "+version, 510, 300);
  //Input channels in game
  if (keyPressed) {
    if (key == 'w' || key == 'W') {
      stroke(127, 201, 250);
      fill(127, 201, 250);
      show(coords[0], coords[1]);
      setColor(255, 0, 0);
      show(coords[0], coords[1]-20);
      coords[1] -=20;
      delay(90);
    }
    if (key == 'd' || key == 'D') {
      stroke(127, 201, 250);
      fill(127, 201, 250);
      show(coords[0], coords[1]);
      setColor(255, 0, 0);
      show(coords[0]+20, coords[1]);
      coords[0] +=20;
      delay(90);
    }
    if (key == 'a' || key == 'A') {
      stroke(127, 201, 250);
      fill(127, 201, 250);
      show(coords[0], coords[1]);
      setColor(255, 0, 0);
      show(coords[0]-20, coords[1]);
      coords[0] -=20;
      delay(90);
    }
    if (key == 's' || key == 'S') {
      stroke(127, 201, 250);
      fill(127, 201, 250);
      show(coords[0], coords[1]);
      setColor(255, 0, 0);
      show(coords[0], coords[1]+20);
      coords[1] +=20;
      delay(90);
    }
  } else {
    ;
  }
}
//The seconds metods
void show(int startX, int startY) {
  rect(startX, startY, 20, 20);
}

void setColor(int a, int b, int c) {
  stroke(a, b, c);
  fill(#7fc9fa);
}
