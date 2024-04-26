import javax.swing.*;



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
  try {
    inventory[current_position] = block_name[Integer.parseInt(line[1])];
    inventory_color[current_position] = block_color[Integer.parseInt(line[1])];
  }
  catch(Exception ex) {
    println("Exception:block not found!");
  }
  try {
    current = Integer.parseInt(line[1]);
  }
  catch(ArrayIndexOutOfBoundsException ex) {
    ;
  }
  current_position++;
}
