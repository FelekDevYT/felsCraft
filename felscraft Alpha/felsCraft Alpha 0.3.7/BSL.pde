public class BSL {
    public void registration_block(byte ID, String name, color col) {
      block_name[ID] = name;
      block_color[ID] = col;
    }
    public void generation_block(byte ID, byte MAX_Y, int random1, int random2) {
      int rand, x, y;
      x = 1;
      y = 300;
      for (int i = 0; i < MAX_Y; ++i) {
        for (int j = 0; j < 32; ++j) {
          Utilites utilites = new Utilites();
          rand = utilites.rand(random1,random2);
          if(rand == utilites.rand(random1,random2)){
            stroke(block_color[ID]);
            fill(#7fc9fa);
            show(x,y);
          }else{
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
