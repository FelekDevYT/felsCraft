public void generation() {
  plains();
  int randd = rand(1, 3);
  for (int i =0; i <randd; i++)
  {
    mountains();
  }
}
/*
*
 *BIOMES GENERATION FUNCTIONS
 *
 */

void plains() {
  int bc = screnWidth / 40;
  int cw = 1, test = 0;
  int[] weidth = new int[bc];
  while (test < bc) {
    weidth[test] =(int) random(8, 10);
    ++test;
  }
  int x = 0, y = screnHeight - 80;
  setColor(block_color[0]);
  for (int i = 0; i < bc; i++) {
    for (test = 0; test < weidth[i]; test++) {
      if (cw >= 1) setColor(block_color[1]);
      if (cw >= rand(5, 7)) setColor(block_color[0]);
      //Generation the ores
      //Iron
      if (cw<=8 && randomIron[0] == randomIron[1] && randomIron[2] == randomIron[3]) {
        setColor(block_color[2]);
      }
      //Gold
      if (cw <= 6 && randomGold[0] == randomGold[1] && randomGold[2] == randomGold[3]) {
        setColor(block_color[3]);
      }
      //Diamond
      if (cw <= 4 && randomDiamond[0] == randomDiamond[1] && randomDiamond[2] == randomDiamond[3]) {
        setColor(block_color[4]);
      }
      show(x, y);
      y-=40;
      cw++;
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
    y=screnHeight-80;
    x+=40;
    cw=1;
  }
}

void mountains() {
  int coord=rand(0, screnWidth);
  while (true) {
    if (coord%40 == 0) {
      break;
    }
    coord++;
  }
  int bc = 6;
  int cw = 1, test = 0;
  int[] weidth = new int[6];
  while (test < bc) {
    weidth[test] =(int) random(10, 14);
    ++test;
  }
  int x = 0, y = screnHeight - 80;
  x=coord;
  setColor(block_color[0]);
  for (int i = 0; i < bc; i++) {
    for (test = 0; test < weidth[i]; test++) {
      if (cw >= 1) setColor(block_color[1]);
      if (cw >= rand(5, 7)) setColor(block_color[0]);
      if (cw >= rand(8, 10)) setColor(block_color[5]);
      //Generation the ores
      //Iron
      if (cw<=8 && randomIron[0] == randomIron[1] && randomIron[2] == randomIron[3]) {
        setColor(block_color[2]);
      }
      //Gold
      if (cw <= 6 && randomGold[0] == randomGold[1] && randomGold[2] == randomGold[3]) {
        setColor(block_color[3]);
      }
      //Diamond
      if (cw <= 4 && randomDiamond[0] == randomDiamond[1] && randomDiamond[2] == randomDiamond[3]) {
        setColor(block_color[4]);
      }
      show(x, y);
      y-=40;
      cw++;
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
    y=screnHeight-80;
    x+=40;
    cw=1;
  }
}
