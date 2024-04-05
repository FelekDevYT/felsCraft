public class Util {
  public int current_position = 0;
  public void message(String text) {
    println("Information: "+text);
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
          inventory_color[current_position] = block_color[Integer.parseInt(line[1])];
    }catch(ArrayIndexOutOfBoundsException ex){
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
