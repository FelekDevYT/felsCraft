////
public static final String version = "0.4.1 all the develophment";
public static final String title = "felsCraft game "+version;
int screnWidth = 1280;//1280;
int screnHeight = 720;
public int smooth = 3;
public static final int MaxFrame = 128;
public static final int strokeWeight = 2;
final int BLOCK_SIZE = 20;
////

public int rand(int min, int max) {
  int range = (max - min) + 1;
  int random = (int) ((range * Math.random()) + min);
  return random;
}
