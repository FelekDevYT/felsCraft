import javax.swing.*;

public static String[] block_name = new String[31];
public color[] block_color = new color[31];
int[] randomIron = {(int)random(1, 5), (int)random(1, 3), (int)random(1, 4), (int)random(1, 2)};
int[] randomGold = {(int)random(1, 7), (int)random(1, 5), (int)random(1, 4), (int)random(1, 3)};
int[] randomDiamond = {(int)random(1, 8), (int)random(1, 2), (int)random(1, 3), (int)random(1, 3)};
public String[] inventory = new String[10];
public color[] inventory_color = new color[10];
int current_position = 0;
int current =0;

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
  block_name[10] = "water";
  block_color[10] = color(17, 156, 209);
  block_name[11] = "sand";
  block_color[11] = color(230, 200, 0);
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
  /////////DRAVING THE SELECTED SECTION
  stroke(143, 123, 255);
  fill(inventory_color[current]);
  rect(screnWidth/3+(current*40), screnHeight-60, 40, 40);
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
    showPlayer(playerX, playerY);
    ///////CODER PACKS,MODS,ADDONS
    Custom c = new Custom();
    c.Start();
    i++;
  }
  if (playerY > screnHeight-80) {
    playerY = 120;
    playerX = 120;
  }
  setColor(block_color[1]);
  rect(0, screnHeight-80, screnWidth, 80);
  drawInventory();
  stroke(256, 256, 256);
  fill(256, 256, 256);
  text("@Coopyright FelsStudio", 10, 10);
  text("felsCraft "+version, 10,30);
  stroke(block_color[8]);
  fill(block_color[8]);
  show(screnWidth-25, 10);
  fill(255, 255, 255);
  text("FPS: "+((int) frameRate), screnWidth-50, 20);
  //
  //
  //
  if (keyPressed) {
    //set inventory position
    if (key == '1') {
      current=0;
    } else if (key == '2') {
      current=1;
    } else if (key == '3') {
      current=2;
    } else if (key == '4') {
      current=3;
    } else if (key == '5') {
      current=4;
    } else if (key == '6') {
      current=5;
    } else if (key == '7') {
      current=6;
    } else if (key == '8') {
      current=7;
    } else if (key == '9') {
      current=8;
    } else if (key == '0') {
      current=9;
    }
    //making and building blocks
    else if (keyCode == UP) {
      setColor(inventory_color[current]);
      show(playerX, playerY-BLOCK_SIZE);
    } else if (keyCode == DOWN) {
      setColor(inventory_color[current]);
      show(playerX, playerY+BLOCK_SIZE);
    } else if (keyCode == RIGHT) {
      setColor(inventory_color[current]);
      show(playerX+BLOCK_SIZE, playerY);
    } else if (keyCode == LEFT) {
      setColor(inventory_color[current]);
      show(playerX-BLOCK_SIZE, playerY);
    }
    //more keys
    else if (key == 't' || key == 'T' ||key == 'е'||key == 'Е') {
      terminal();
    } else if (key == 'l' || key =='L'||key == 'д'||key == 'Д') {
      background(block_color[8]);
      generation();
      delay(100);
    }
    //refactor position keys
    else if (key == 'w' || key == 'W'||key == 'ц'||key == 'Ц') {
      stroke(block_color[8]);
      fill(block_color[8]);
      show(playerX, playerY);
      showPlayer(playerX, playerY-BLOCK_SIZE);
      playerY-=BLOCK_SIZE;
      delay(SWITCH_DELEAY);
    } else if (key == 's' || key == 'S'||key == 'ы'||key == 'Ы') {
      stroke(block_color[8]);
      fill(block_color[8]);
      show(playerX, playerY);
      showPlayer(playerX, playerY+BLOCK_SIZE);
      playerY+=BLOCK_SIZE;
      delay(SWITCH_DELEAY);
    } else if (key == 'a' || key == 'A'||key == 'ф'||key == 'Ф') {
      stroke(block_color[8]);
      fill(block_color[8]);
      show(playerX, playerY);
      showPlayer(playerX-BLOCK_SIZE, playerY);
      playerX-=BLOCK_SIZE;
      delay(SWITCH_DELEAY);
    } else if (key == 'd' || key == 'D'||key == 'в'||key == 'В') {
      stroke(block_color[8]);
      fill(block_color[8]);
      show(playerX, playerY);
      showPlayer(playerX+BLOCK_SIZE, playerY);
      playerX+=BLOCK_SIZE;
      delay(SWITCH_DELEAY);
    }
  }
}


//The seconds metods
void show(int startX, int startY) {
  rect(startX, startY, BLOCK_SIZE, BLOCK_SIZE);
}

void setColor(color col) {
  stroke(70,70,70);//42,42,42
  fill(col);
}

void showPlayer(int x, int y) {
  PImage player = loadImage("player.png");
  image(player, x, y);
}
