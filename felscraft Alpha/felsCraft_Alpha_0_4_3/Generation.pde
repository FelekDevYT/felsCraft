public void generation() {
  plains();
  structures();
  int randd;
  randd = rand(1, 5);
  for (int i =0; i <randd; i++)
  {
    forest();
  }
  randd = rand(1, 3);
  for (int i =0; i <randd; i++)
  {
    mountains();
  }
  sea();
}
/*
*
 *BIOMES GENERATION FUNCTIONS
 *
 */

void plains() {
  int bc = screnWidth / BLOCK_SIZE;
  int cw = 1, test = 0;
  int[] weidth = new int[bc];
  while (test < bc) {
    weidth[test] =(int) random(15, 18);
    ++test;
  }
  int x = 0, y = screnHeight - 80;
  setColor(block_color[0]);
  for (int i = 0; i < bc; i++) {
    for (test = 0; test < weidth[i]; test++) {
      if (cw >= 1) setColor(block_color[1]);
      if (cw >= rand(10, 13)) setColor(block_color[9]);
      if (cw >= rand(15, 18)) setColor(block_color[0]);
      //Generation the ores
      //Iron
      if (cw<=10 && randomIron[0] == randomIron[1] && randomIron[2] == randomIron[3]) {
        setColor(block_color[2]);
      }
      //Gold
      if (cw <= 8 && randomGold[0] == randomGold[1] && randomGold[2] == randomGold[3]) {
        setColor(block_color[3]);
      }
      //Diamond
      if (cw <= 7 && randomDiamond[0] == randomDiamond[1] && randomDiamond[2] == randomDiamond[3]) {
        setColor(block_color[4]);
      }
      show(x, y);
      y-=BLOCK_SIZE;
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
    x+=BLOCK_SIZE;
    cw=1;
  }
}

void mountains() {
  int coord=rand(0, screnWidth);
  while (true) {
    if (coord%BLOCK_SIZE == 0) {
      break;
    }
    coord++;
  }
  int bc = 6;
  int cw = 1, test = 0;
  int[] weidth = new int[6];
  while (test < bc) {
    weidth[test] =(int) random(19, 26);
    ++test;
  }
  int x = 0, y = screnHeight - 80;
  x=coord;
  setColor(block_color[0]);
  for (int i = 0; i < bc; i++) {
    for (test = 0; test < weidth[i]; test++) {
      if (cw >= 1) setColor(block_color[1]);
      if (cw >= rand(10, 14)) setColor(block_color[9]);
      if (cw >= 15) setColor(block_color[0]);
      if (cw >= rand(16, 18)) setColor(block_color[5]);
      //Generation the ores
      //Iron
      if (cw<=13 && randomIron[0] == randomIron[1] && randomIron[2] == randomIron[3]) {
        setColor(block_color[2]);
      }
      //Gold
      if (cw <= 11 && randomGold[0] == randomGold[1] && randomGold[2] == randomGold[3]) {
        setColor(block_color[3]);
      }
      //Diamond
      if (cw <= 10 && randomDiamond[0] == randomDiamond[1] && randomDiamond[2] == randomDiamond[3]) {
        setColor(block_color[4]);
      }
      show(x, y);
      y-=BLOCK_SIZE;
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
    x+=BLOCK_SIZE;
    cw=1;
  }
}


void sea() {
  int coord=rand(0, screnWidth);
  while (true) {
    if (coord%BLOCK_SIZE == 0) {
      break;
    }
    coord++;
  }
  fill(block_color[8]);
  stroke(block_color[8]);
  rect(coord, screnHeight - 120, 120, 10000);
  int bc = 6;
  int cw = 1, test = 0;
  int x = 0, y = screnHeight - 80;
  x=coord;
  setColor(block_color[0]);
  for (int i = 0; i < bc; i++) {
    for (test = 0; test < 15; test++) {
      if (cw >= 1) setColor(block_color[1]);
      if (cw >= rand(3, 5)) setColor(block_color[10]);
      show(x, y);
      y-=BLOCK_SIZE;
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
    x+=BLOCK_SIZE;
    cw=1;
  }
  //sand generation
  x=coord;
  setColor(block_color[11]);
  for (int i = 0; i< 6; i++) {
    show(x, screnHeight-160);
    x+=20;
  }
}

void forest() {
  int coord=rand(0, screnWidth);
  while (true) {
    if (coord%BLOCK_SIZE == 0) {
      break;
    }
    coord++;
  }
  int bc = 6;
  int cw = 1, test = 0;
  int[] weidth = new int[6];
  while (test < bc) {
    weidth[test] =(int) random(15, 17);
    ++test;
  }
  int x = 0, y = screnHeight - 80;
  x=coord;
  setColor(block_color[0]);
  for (int i = 0; i < bc; i++) {
    for (test = 0; test < weidth[i]; test++) {
      if (cw >= 1) setColor(block_color[1]);
      if (cw >= rand(9, 13)) setColor(block_color[9]);
      if (cw >= rand(12, 14)) setColor(block_color[0]);
      //Generation the ores
      //Iron
      if (cw<=11 && randomIron[0] == randomIron[1] && randomIron[2] == randomIron[3]) {
        setColor(block_color[2]);
      }
      //Gold
      if (cw <= 9 && randomGold[0] == randomGold[1] && randomGold[2] == randomGold[3]) {
        setColor(block_color[3]);
      }
      //Diamond
      if (cw <= 8 && randomDiamond[0] == randomDiamond[1] && randomDiamond[2] == randomDiamond[3]) {
        setColor(block_color[4]);
      }
      show(x, y);
      y-=BLOCK_SIZE;
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
    x+=BLOCK_SIZE;
    cw=1;
  }
  int r = rand(3, 4);
  for (int i = 0; i <r; i++) {
    int rnd = rand(coord, coord+200);
    while (rnd%BLOCK_SIZE != 0 ) {
      rnd++;
    }
    Tree(rnd, 300);
  }
}

void structures() {
  for (int i = 0; i < 8; i++) {
    int coord = rand(0, screnWidth);
    while (coord%BLOCK_SIZE != 0) {
      coord++;
    }
    Tree(coord, 320);
  }
  for (int i = 0; i < 4; i++) {
    int coord = rand(0, screnWidth);
    while (coord%BLOCK_SIZE != 0) {
      coord++;
    }
  }
}

/* %%
 %% %% %%
 []0,0
 []
 */
void Tree(int x, int y) {
  setColor(block_color[6]);
  show(x, y);
  show(x, y+BLOCK_SIZE);
  setColor(block_color[7]);
  show(x, y-BLOCK_SIZE);
  show(x-BLOCK_SIZE, y-BLOCK_SIZE);
  show(x+BLOCK_SIZE, y-BLOCK_SIZE);
}
