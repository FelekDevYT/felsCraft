public class BSL {

  String name = "Exemple mod";
  public byte playerX = (byte)coords[0], playerY = (byte)coords[1];
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
    y = 300;
    for (int i = 0; i < MAX_Y; ++i) {
      for (int j = 0; j < 33; ++j) {
        Utilites utilites = new Utilites();
        rand = utilites.rand(random1, random2);
        if (rand == utilites.rand(random1, random2)) {
          stroke(42, 42, 42);
          fill(block_color[ID]);
          show(x, y);
        } else {
          x+=20;
        }
        x+=20;
      }
      x=1;
      y-=20;
    }
  }
  
  public void generation_biome(String name, int weight, int MIN_Y, int MAX_Y){
   biomemaker bm = new biomemaker();
   bm.Biomeobject(name,weight,MIN_Y,MAX_Y,false);
  }

  public void Start(){
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
  static void register(){};

  static void mod(){};
  
  static void Start(){
    register();
    mod();
  };
}
