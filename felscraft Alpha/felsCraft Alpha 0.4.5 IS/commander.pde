import java.util.List;

public void liner(String[] line) {
  if (line[0].equals("/give")) {
    try {
      inventory[current_position] = block_name[Integer.parseInt(line[1])];
      inventory_color[current_position] = block_color[Integer.parseInt(line[1])];
    }
    catch(Exception ex) {
      println("Exception:block not found!");
    }
    try {
      current++;
    }
    catch(ArrayIndexOutOfBoundsException ex) {
      ;
    }
  } else if (line[0].equals("/exit")) {
    println("Exit from game with exit code : 0");
    System.exit(0);
  } else if(line[0].equals("/cset")){
   current = Integer.parseInt(line[1]); 
  }
}
