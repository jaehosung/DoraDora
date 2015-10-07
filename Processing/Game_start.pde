PImage doradora;
PImage start_button;
int game_start=0;
class Frontdoor {
  
  float x, y; /// location of doradora
  float x2, y2; /// location of start_button
  
  
  void draw_dora(int var) {
    
    x = 514;
    y = 258;
    x2 = 520;
    y2 = 474;
    
    if (var == 0) {

      image(doradora, x, y,452,270);
      image(start_button, x2, y2, 350, 110);
      
    };
    
    if ( mouseX > (x2-175) && mouseX < (x2+175) && mouseY > (y2-55) && mouseY < (y2+55) && var == 0) {
        
        image(start_button, x2, y2, 390, 127);
      
        if (mousePressed == true) {
          
          game_start = 1;  //// global variable 'game_start' changed
          delay(100);
          mousePressed=false;
          
          
          }
    }
  }
  
}
         
