////
public static final String version = "infinity 0.4.4";
public static final String title = "felsCraft "+version;
int screnWidth = 1280;//1280;
int screnHeight = 720;
public int smooth = 3;
public static final int MaxFrame = 2048;//796
public static final int strokeWeight = 2;
final int BLOCK_SIZE = 20;
final int SWITCH_DELEAY = 68;
////

public int rand(int min, int max) {
  int range = (max - min) + 1;
  int random = (int) ((range * Math.random()) + min);
  return random;
}
