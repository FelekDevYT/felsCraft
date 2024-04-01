public class BSL {
  
  public byte playerX = (byte)coords[0],playerY = (byte)coords[1];
  
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
          stroke(42,42,42);
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

  public class Utilites {
    public int rand(int min, int max) {
      int range = (max - min) + 1;
      int random = (int) ((range * Math.random()) + min);
      return random;
    }
  }
}
