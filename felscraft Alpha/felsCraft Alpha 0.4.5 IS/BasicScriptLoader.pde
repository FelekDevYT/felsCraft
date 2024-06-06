public class BSL {

  String name = "Exemple mod";
  boolean doInit;
  private String versionGame = version;

  public void register_BSL(boolean isDo) {
    doInit = isDo;
  }

  public void register_mod(String name) {
    isInit();
    this.name = name;
    println("Mod "+name+" sucsesfull installed!");
  }

  private void isInit() {
    if (doInit) {
      println("BSL loaded for version : "+versionGame);
    } else {
      println("You do not initialization BSL \n from occured an error in initializatioin BSL \n not relisation of registration!");
    }
  }

  public void registration_block(byte ID, String name, color col) {
    block_name[ID] = name;
    block_color[ID] = col;
  }
  public void generation_block(byte ID, byte MAX_Y, int random1, int random2) {
    int rand, x, y;
    x = 1;
    y = screnHeight- 80;
    for (int i = 0; i < MAX_Y; ++i) {
      for (int j = 0; j < 33; ++j) {
        Utilites utilites = new Utilites();
        rand = utilites.rand(random1, random2);
        if (rand == utilites.rand(random1, random2)) {
          stroke(42, 42, 42);
          fill(block_color[ID]);
          show(x, y);
        } else {
          x+=BLOCK_SIZE;
        }
        x+=40;
      }
      x=1;
      y-=BLOCK_SIZE;
    }
  }

  public void generation_biome(int MAXH, int MINH,int IL,int GL,int DL,int MING,int MAXG,int MIND,int MAXD,int COBBBLESTONE) {//GRASS,DIRT,COBBLESTONE
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
      weidth[test] =(int) random(MAXH, MINH);
      ++test;
    }
    int x = 0, y = screnHeight - 80;
    x=coord;
    setColor(block_color[0]);
    for (int i = 0; i < bc; i++) {
      for (test = 0; test < weidth[i]; test++) {
        if (cw >= COBBBLESTONE) setColor(block_color[1]);
        if (cw >= rand(MIND, MAXD)) setColor(block_color[9]);
        if (cw >= rand(MING, MAXG)) setColor(block_color[0]);
        //Generation the ores
        //Iron
        if (cw<=IL && randomIron[0] == randomIron[1] && randomIron[2] == randomIron[3]) {
          setColor(block_color[2]);
        }
        //Gold
        if (cw <= GL && randomGold[0] == randomGold[1] && randomGold[2] == randomGold[3]) {
          setColor(block_color[3]);
        }
        //Diamond
        if (cw <= DL && randomDiamond[0] == randomDiamond[1] && randomDiamond[2] == randomDiamond[3]) {
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
  }///////////////////////////////////////////

  public void Start() {
    BSL_mod.Start();
  }

  public class Utilites {
    public int rand(int min, int max) {
      int range = (max - min) + 1;
      int random = (int) ((range * Math.random()) + min);
      return random;
    }
  }
}

public interface BSL_mod {
  static void register() {
  };

  static void mod() {
  };

  static void Start() {
    register();
    mod();
  };
}
