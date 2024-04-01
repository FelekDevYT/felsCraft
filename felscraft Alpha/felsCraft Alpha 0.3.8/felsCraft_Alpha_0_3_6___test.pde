import javax.swing.JOptionPane;

int[] coords = {161, 160};
final String version = "Alpha 0.3.8";
int[] randomIron = {(int)random(1, 5), (int)random(1, 3), (int)random(1, 4), (int)random(1, 2)};
int[] randomGold = {(int)random(1, 7), (int)random(1, 5), (int)random(1, 4), (int)random(1, 3)};
int[] randomDiamond = {(int)random(1, 12), (int)random(1, 2), (int)random(1, 3), (int)random(1, 5)};
public String[] inventory = {"Null", "Null", "Null", "Null", "Null"};
public static String[] block_name = new String[31];
public color[] block_color = new color[31];
public static int current = 0;
int current_smoof = 3;
Util util = new Util();

void Initialization() {
  block_name[0] = "cobblestone";
  block_name[1] = "air";
  block_name[2] = "grass";
  block_name[3] = "snow";
  block_name[4] = "iron";
  block_name[5] = "gold";
  block_name[6] = "diamond";
  block_color[0] = color(0, 0, 0);
  block_color[1] = color(#7fc9fa);
  block_color[2] = color(0, 153, 0);
  block_color[3] = color(255, 255, 255);
  block_color[4] = color(132, 141, 148);
  block_color[5] = color(255, 220, 15);
  block_color[6] = color(54, 171, 186);
  current = 0;
}

void setup() {
  Initialization();
  size(640, 360);//640|320
  smooth(3);
  current_smoof = 3;
  surface.setTitle("felsCraft game "+version);
  surface.setResizable(false);
  background(#7fc9fa);
  strokeWeight(3);
  frameRate(60);
  fill(42, 42, 42);
  rect(1, 321, 650, 361);
  int y = 300;
  int x = 1;
  int cw = 1, test = 0;
  int[] weidth = new int[33];
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
  ///Creating the biomes
  biomemaker biome1 = new biomemaker();
  biome1.generation();
  ///Creating player
  setColor(255, 0, 0);
  show(161, 160);
  //Place for Mod function
  Custom();
  text("felsCraft "+version, 510, 300);
}

void draw() {
  if (coords[1] > 320) {
    fill(42, 42, 42);
    stroke(0, 0, 0);
    rect(1, 321, 650, 361);
    coords[1] = 150;
  }
  stroke(256, 256, 256);
  fill(256, 256, 256);
  text("felsCraft "+version, 510, 300);
  text("@Coopyright FelsStudio", 10, 10);
  //Input channels in game
  if (keyPressed) {
    if (key == 'f' || key == 'F') {
      smooth(current_smoof+1);
      current_smoof++;
      util.message("Current graphics level : "+current_smoof);
    }
    if (key == 'm' || key == 'M') {
      smooth(current_smoof+1);
      current_smoof++;
      util.message("Current graphics level : "+current_smoof);
    }
    if (key == 'q' || key == 'Q') System.exit(0);
    if (key == 't' ||key == 'T') {
      util.terminal();
    }
    if (keyCode == UP) {
      stroke(42, 42, 42);
      fill(block_color[current]);
      show(coords[0], coords[1]-20);
    }
    if (keyCode == DOWN) {
      stroke(42, 42, 42);
      fill(block_color[current]);
      show(coords[0], coords[1]+20);
    }
    if (keyCode == LEFT) {
      stroke(42, 42, 42);
      fill(block_color[current]);
      show(coords[0]-20, coords[1]);
    }
    if (keyCode == RIGHT) {
      stroke(42, 42, 42);
      fill(block_color[current]);
      show(coords[0]+20, coords[1]);
    }
    if (key == 'w' || key == 'W') {
      stroke(127, 201, 250);
      fill(127, 201, 250);
      show(coords[0], coords[1]);
      setColor(255, 0, 0);
      show(coords[0], coords[1]-20);
      coords[1] -=20;
      util.showInventory();
      delay(90);
    }
    if (key == 'd' || key == 'D') {
      stroke(127, 201, 250);
      fill(127, 201, 250);
      show(coords[0], coords[1]);
      setColor(255, 0, 0);
      show(coords[0]+20, coords[1]);
      coords[0] +=20;
      util.showInventory();
      delay(90);
    }
    if (key == 'a' || key == 'A') {
      stroke(127, 201, 250);
      fill(127, 201, 250);
      show(coords[0], coords[1]);
      setColor(255, 0, 0);
      show(coords[0]-20, coords[1]);
      coords[0] -=20;
      util.showInventory();
      delay(90);
    }
    if (key == 's' || key == 'S') {
      stroke(127, 201, 250);
      fill(127, 201, 250);
      show(coords[0], coords[1]);
      setColor(255, 0, 0);
      show(coords[0], coords[1]+20);
      coords[1] +=20;
      util.showInventory();
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
  stroke(42, 42, 42);
  fill(a, b, c);
}

color colorer(int a) {
  if (a == 0) return color(0, 0, 0);
  if (a == 1) return color(127, 201, 250);
  if (a == 2) return color(0, 153, 0);
  if (a == 3) return color(255, 255, 255);
  if (a == 4) return color(132, 141, 148);
  if (a == 5) return color(255, 220, 15);
  if (a == 6) return color(54, 171, 186);
  else return color(255, 0, 0);
}
