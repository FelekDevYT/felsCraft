////
public static final String version = "0.3.11";
public static final String title = "felsCraft game "+version;
int screnWidth = 1280;//1280;
int screnHeight = 720;
public int smooth = 3;
public static final int MaxFrame = 128;
public static final int strokeWeight = 2;
////

public int rand(int min, int max) {
  int range = (max - min) + 1;
  int random = (int) ((range * Math.random()) + min);
  return random;
}
