public class Util {
  public int current_position = 0;
  public void message(String text) {
    fill(42, 42, 42);
    stroke(0, 0, 0);
    rect(1, 321, 650, 361);
    stroke(256, 256, 256);
    textSize(10);
    text(text, 450, 340);
    delay(80);
    textSize(3);
  }
  public void terminal() {
    String command = JOptionPane.showInputDialog(null, "Enter command>", "Terminal", JOptionPane.INFORMATION_MESSAGE);
    delay(50);
    String[] line = {"",""}; 
    try{
         line = command.split(" "); 
    }catch(Exception ex){
     ; 
    }
    try{
          inventory[current_position] = block_name[Integer.parseInt(line[1])];
    }catch(Exception ex){
        println("Exception:block not found!");
    }
    try{
         current = Integer.parseInt(line[1]); 
    }catch(ArrayIndexOutOfBoundsException ex){
      ;
    }
    ++current_position;
  }
  
  public void showInventory(){
    print("[userInfo]");
   for(String el:inventory){
    print("|"+el+"|"); 
   }
   println();
  }
}
