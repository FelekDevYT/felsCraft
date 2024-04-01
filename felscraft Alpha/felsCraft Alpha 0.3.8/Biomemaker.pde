class biomemaker {
  public String name;

  Utilites util = new Utilites();

  public void generation() {
    int x, y, coord;
    coord=util.rand(1, 640);
    while (true) {
      if (coord%20 == 0) {
        break;
      }
      coord++;
    }
    println("Plains biome in coords : "+coord);
    x=coord+1;
    y=300;
    for (int i = 0; i < 6; i++) {
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
  int cw = 1, test = 0;
  int[] weidth = new int[6];
  while (test < 6) {
    weidth[test] =(int) random(6,8);
    ++test;
  }
  test = 0;
  for (int i = 0; i != 6; i++) {
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
