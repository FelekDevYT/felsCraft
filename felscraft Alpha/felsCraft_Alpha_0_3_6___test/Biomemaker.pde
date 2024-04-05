class biomemaker {
  public String name;

  Utilites util = new Utilites();

  public void plains() {
    Biomeobject("plains", 35, 6, 8, true);
  }

  public void mountains() {
    Biomeobject("mountains", 6, 8, 14, false);
  }

  public void generation() {
    Biomeobject("plains", 35, 6, 8, true);
    Biomeobject("mountains", 6, 8, 14, false);
    ForestBiome();
  }

  public void Biomeobject(String name, int weight, int MIN_Y, int MAX_Y, boolean doAll) {
    int x, y, coord;
    if (doAll == false)    coord=util.rand(1, 600);
    else coord = 0;
    while (true) {
      if (coord%20 == 0) {
        break;
      }
      coord++;
    }
    println(name+" biome in coords : "+coord);
    x=coord+1;
    y=300;
    for (int i = 0; i < weight; i++) {
      for (int j = 0; j <20; j++) {
        stroke(#7fc9fa);
        fill(#7fc9fa);
        show(x, y);
        y-=20;
      }
      y=300;
      x+=20;
    }
    y = 300;
    x = coord+1;
    //Creating terrain of biome
    int cw = 1, test = 0;
    int[] weidth = new int[weight];
    while (test < weight) {
      weidth[test] =(int) random(MIN_Y, MAX_Y);
      ++test;
    }
    test = 0;
    for (int i = 0; i != weight; i++) {
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
  }

  public class Utilites {
    public int rand(int min, int max) {
      int range = (max - min) + 1;
      int random = (int) ((range * Math.random()) + min);
      return random;
    }
  }
}

/*
*
 *THE CUSTOM BIOME GENERATION
 *
 */
public class Utilites {
  public int rand(int min, int max) {
    int range = (max - min) + 1;
    int random = (int) ((range * Math.random()) + min);
    return random;
  }
}
int coord;
public void ForestBiome() {
  Utilites util = new Utilites();
  int x, y, weight = 6, MIN_Y = 6, MAX_Y = 8;
  String name = "forest";
  coord=util.rand(1, 600);
  while (true) {
    if (coord%20 == 0) {
      break;
    }
    coord++;
  }
  println(name+" biome in coords : "+coord);
  x=coord+1;
  y=300;
  for (int i = 0; i < weight; i++) {
    for (int j = 0; j <20; j++) {
      stroke(#7fc9fa);
      fill(#7fc9fa);
      show(x, y);
      y-=20;
    }
    y=300;
    x+=20;
  }
  y = 300;
  x = coord+1;
  //Creating terrain of biome
  int cw = 1, test = 0;
  int[] weidth = new int[weight];
  while (test < weight) {
    weidth[test] =(int) random(MIN_Y, MAX_Y);
    ++test;
  }
  test = 0;
  for (int i = 0; i != weight; i++) {
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
  int parts = util.rand(2, 5);
  for (int i = 0; i < parts; i++) {
    if (i == 1) Tree(coord+21, 300 - weidth[i]*20+1);
    if (i == 2) Tree(coord+61, 300 - weidth[i]*20+1);
    if (i == 3) Tree(coord+81, 300 - weidth[i]*20+1);
    if (i == 4) Tree(coord+101, 300 - weidth[i]*20+1);
  }
}
//tree
void Tree(int x, int y) {
  stroke(42, 42, 42);
  fill(block_color[7]);
  show(x, y);
  show(x, y-20);
  show(x, y-40);
  fill(block_color[8]);
  show(x, y-60);
  show(x, y-80);
  show(x-20, y-60);
  show(x+20, y-60);
}

//snow

public void snow() {
  Utilites util = new Utilites();
  int x, y, weight = 10, MIN_Y = 6, MAX_Y = 8;
  String name = "snow plains";
  coord=util.rand(1, 600);
  while (true) {
    if (coord%20 == 0) {
      break;
    }
    coord++;
  }
  println(name+" biome in coords : "+coord);
  x=coord+1;
  y=300;
  for (int i = 0; i < weight; i++) {
    for (int j = 0; j <20; j++) {
      stroke(#7fc9fa);
      fill(#7fc9fa);
      show(x, y);
      y-=20;
    }
    y=300;
    x+=20;
  }
  y = 300;
  x = coord+1;
  //Creating terrain of biome
  int cw = 1, test = 0;
  int[] weidth = new int[weight];
  while (test < weight) {
    weidth[test] =(int) random(MIN_Y, MAX_Y);
    ++test;
  }
  test = 0;
  for (int i = 0; i != weight; i++) {
    for (test = 0; test < weidth[i]; test++) {
      if (cw >= 1) {
        setColor(13, 11, 13);
      }
      if (cw >= random(4, 6)) {
        setColor(256, 256, 256);
      }
      //Generation the ores
      //Iron
      if (cw<=5 && randomIron[0] == randomIron[1] && randomIron[2] == randomIron[3]) {
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
}
