import javax.swing.*; //<>//
import java.util.*;
import java.io.IOException;
import java.nio.charset.StandardCharsets;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

void terminal() {
  JFrame parentFrame = new JFrame();
  parentFrame.setAlwaysOnTop(true);
  String command = JOptionPane.showInputDialog(parentFrame, "Enter command>", "Terminal", JOptionPane.INFORMATION_MESSAGE);
  delay(50);
  String[] line = {"", ""};
  try {
    line = command.split(" ");
  }
  catch(Exception ex) {
    println("[Console]Error of inventory!");
  }

  //
  //

  liner(line);

  current_position++;
}

void saveLevel(String levelPath) throws IOException {
  new File("level.data");
  PrintWriter writer = new PrintWriter("level.data", "UTF-8");
  writer.println(current);
  writer.println(playerX);
  writer.println(playerY);
  writer.println(inventory[0]);
  writer.println(inventory[1]);
  writer.println(inventory[2]);
  writer.println(inventory[3]);
  writer.println(inventory[4]);
  writer.println(inventory[5]);
  writer.println(inventory[6]);
  writer.println(inventory[7]);
  writer.println(inventory[8]);
  writer.println(inventory[9]);
  writer.close();
  save(levelPath+".TIFF"); //.fsl = felsCraft level
}

void openLevel(String levelPath) throws IOException {
  Path myPath = Paths.get("level.data");
  List < String > level = Files.readAllLines(myPath, StandardCharsets.UTF_8);

  current = Integer.parseInt(level.get(0));
  playerX = Integer.parseInt(level.get(1));
  playerY = Integer.parseInt(level.get(2));

  PImage openLevel = loadImage(levelPath+".TIFF");
  image(openLevel, 0, 0);
}

void message(String text){
  text(text,400,screnHeight-20);
}
