import javax.swing.JOptionPane;

public static String[] block_name = new String[31];
public color[] block_color = new color[31];
int[] randomIron = {(int)random(1, 5), (int)random(1, 3), (int)random(1, 4), (int)random(1, 2)};
int[] randomGold = {(int)random(1, 7), (int)random(1, 5), (int)random(1, 4), (int)random(1, 3)};
int[] randomDiamond = {(int)random(1, 12), (int)random(1, 2), (int)random(1, 3), (int)random(1, 5)};
public String[] inventory = new String[10];
public color[] inventory_color = new color[10];
int current_position = 0;
int current;

public int playerX = 280;
public int playerY = 280;

void settings() {
  size(screnWidth, screnHeight, P2D);
  smooth(smooth);
  block_name[0] = "grass";
  block_color[0] = color(0, 153, 0);
  block_name[1] = "cobblestone";
  block_color[1] = color(0, 0, 0);
  block_name[2] = "iron";
  block_color[2] = color(132, 141, 148);
  block_name[3] = "gold";
  block_color[3] = color(255, 240, 15);
  block_name[4] = "diamond";
  block_color[4] = color(54, 171, 186);
  block_name[5] = "snow";
  block_color[5] = color(255, 255, 255);
  block_name[6] = "log";
  block_color[6] = color(121, 76, 28);
  block_name[7] = "leaves";
  block_color[7] = color(83, 232, 54);
  block_name[8] = "air";
  block_color[8] = #7fc9fa;
  block_name[9] = "dirt";
  block_color[9] = color(188, 104, 0);
  inventory[0] = "Null";
  inventory[1] = "Null";
  inventory[2] = "Null";
  inventory[3] = "Null";
  inventory[4] = "Null";
  inventory[5] = "Null";
  inventory[6] = "Null";
  inventory[7] = "Null";
  inventory[8] = "Null";
  inventory[9] = "Null";
  inventory_color[0] = block_color[1];
  inventory_color[1] = block_color[1];
  inventory_color[2] = block_color[1];
  inventory_color[3] = block_color[1];
  inventory_color[4] = block_color[1];
  inventory_color[5] = block_color[1];
  inventory_color[6] = block_color[1];
  inventory_color[7] = block_color[1];
  inventory_color[8] = block_color[1];
  inventory_color[9] = block_color[1];
}

void drawInventory() {
  setColor(inventory_color[0]);
  rect(screnWidth/3, screnHeight-60, 40, 40);
  setColor(inventory_color[1]);
  rect(screnWidth/3+40, screnHeight-60, 40, 40);
  setColor(inventory_color[2]);
  rect(screnWidth/3+80, screnHeight-60, 40, 40);
  setColor(inventory_color[3]);
  rect(screnWidth/3+120, screnHeight-60, 40, 40);
  setColor(inventory_color[4]);
  rect(screnWidth/3+160, screnHeight-60, 40, 40);
  setColor(inventory_color[5]);
  rect(screnWidth/3+200, screnHeight-60, 40, 40);
  setColor(inventory_color[6]);
  rect(screnWidth/3+240, screnHeight-60, 40, 40);
  setColor(inventory_color[7]);
  rect(screnWidth/3+280, screnHeight-60, 40, 40);
  setColor(inventory_color[8]);
  rect(screnWidth/3+320, screnHeight-60, 40, 40);
  setColor(inventory_color[9]);
  rect(screnWidth/3+360, screnHeight-60, 40, 40);
}

void setup() {
  surface.setTitle(title);
  surface.setResizable(false);
  background(#7fc9fa);
  strokeWeight(strokeWeight);
  frameRate(MaxFrame);
}
int i = 0;
void draw() {
  if (i == 0) {
    generation();
    setColor(color(255, 0, 0));
    show(playerX, playerY);
    ///////CODER PACKS,MODS,ADDONS
    Custom c = new Custom();
    c.Start();
  }
  if (playerY > screnHeight-80) {
    playerY = 120;
  }
  setColor(block_color[1]);
  rect(0, screnHeight-80, screnWidth, 80);
  i++;
  drawInventory();
  stroke(256, 256, 256);
  fill(256, 256, 256);
  text("@Coopyright FelsStudio", 10, 10);
  text("felsCraft "+version, screnWidth -150, screnHeight-100);
  stroke(block_color[8]);
  fill(block_color[8]);
  show(screnWidth-50, 10);
  fill(255, 255, 255);
  text("FPS: "+((int) frameRate), screnWidth-50, 20);
  //
  //
  //
  if (keyPressed) {
    if (keyCode == UP) {
      setColor(block_color[current]);
      show(playerX, playerY-40);
    }
    if (keyCode == DOWN) {
      setColor(block_color[current]);
      show(playerX, playerY+40);
    }
    if (keyCode == RIGHT) {
      setColor(block_color[current]);
      show(playerX+40, playerY);
    }
    if (keyCode == LEFT) {
      setColor(block_color[current]);
      show(playerX-40, playerY);
    }
    if (key == 't' || key == 'T') {
      terminal();
    }
    if (key == 'l' || key =='L') {
      background(block_color[8]);
      generation();
      delay(100);
    }
    if (key == 'w' || key == 'W') {
      stroke(block_color[8]);
      fill(block_color[8]);
      show(playerX, playerY);
      setColor(color(255, 0, 0));
      show(playerX, playerY-40);
      playerY-=40;
      delay(100);
    }
    if (key == 's' || key == 'S') {
      stroke(block_color[8]);
      fill(block_color[8]);
      show(playerX, playerY);
      setColor(color(255, 0, 0));
      show(playerX, playerY+40);
      playerY+=40;
      delay(100);
    }
    if (key == 'a' || key == 'A') {
      stroke(block_color[8]);
      fill(block_color[8]);
      show(playerX, playerY);
      setColor(color(255, 0, 0));
      show(playerX-40, playerY);
      playerX-=40;
      delay(100);
    }
    if (key == 'd' || key == 'D') {
      stroke(block_color[8]);
      fill(block_color[8]);
      show(playerX, playerY);
      setColor(color(255, 0, 0));
      show(playerX+40, playerY);
      playerX+=40;
      delay(100);
    }
  }
}


//The seconds metods
void show(int startX, int startY) {
  rect(startX, startY, 40, 40);
}

void setColor(color col) {
  stroke(42, 42, 42);
  fill(col);
}
