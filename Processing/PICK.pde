
PImage pickimage_large;

//
PImage player_city;
PImage player_golden;
PImage player_blue;
PImage player_purple;

PImage player_picked;



class Pick {
  float x,y; // location of player 1
  float x2,y2; // location of player 2
  
  float theX, theY; //location of mouse
  /////
  float dpx, dpy; //location of player 1 info 
  float dpx2, dpy2; //location of player 2 info 
  
  
  void draw_player(int whichone, int a) {
    
    if (a == 1) {
      
      /// location of player 1
      dpx = 100;
      dpy = 218;
      
      ///
      
      
      /// selection
      
      if ( mouseX > (dpx-60) && mouseX < (dpx+60) && mouseY > (dpy-60) && mouseY < (dpy+60)) {
        
        if (mousePressed == true && player_1_picked == 0) {
          delay(50);
          type_1 = type_1 + 1;
          if (type_1 == 5) {
            type_1 = 1;
          }
          
          
        } else {
          
        }
        
        
      }
      
      ///
      
      
      // city - golden - blue - purple
      
      switch(whichone) {
        case 1: 
          image(player_city, dpx, dpy, 120, 120);
          break;
        case 2: 
          image(player_golden, dpx, dpy, 120, 120);  
          break;
        case 3: 
          image(player_blue, dpx, dpy, 120, 120); 
          break;
        case 4: 
          image(player_purple, dpx, dpy, 120, 120);  
          break;
        default:
          break;
      }
    } else if (a == 2) {
      
      /// location of player 2
      dpx2 = 910;
      dpy2 = 218;
      
      ///
      
      
      /// selection
      
      if ( mouseX > (dpx2-60) && mouseX < (dpx2+60) && mouseY > (dpy2-60) && mouseY < (dpy2+60)) {
        
        if (mousePressed == true && player_2_picked == 0) {
          delay(50);
          type_2 = type_2 + 1;
          if (type_2 == 5) {
            type_2 = 1;
          }
          
          
        } else {
          
        }
        
        
      }
      
      ///
      
      
      // city - golden - blue - purple
      
      switch(whichone) {
        case 1: 
          image(player_city, dpx2, dpy2, 120, 120);
          break;
        case 2: 
          image(player_golden, dpx2, dpy2, 120, 120);  
          break;
        case 3: 
          image(player_blue, dpx2, dpy2, 120, 120); 
          break;
        case 4: 
          image(player_purple, dpx2, dpy2, 120, 120);  
          break;
        default:
          break;
      }
    }
    
    
  }
      
   
  
  
  
  
  
  void draw_pick(int a) {
    
    
   
    
    if (a == 1 && player_1_picked == 0) {
        x = 141;
        y = 313;
      
      if ( mouseX > (x-27) && mouseX < (x+27) && mouseY > (y-15) && mouseY < (y+15)) {
        
         
        scale(1.2);
        image(pickimage_large, x/1.2, y/1.2, 55, 61);
        scale(1/1.2);
        
        if (mousePressed == true) {
          player_1_picked = 1;
          
        }
      }
      
      
          
    } else if (a == 2 && player_2_picked == 0) {
      
       x2 = 951;
       y2 = 313;
      
      if ( mouseX > (x2-27) && mouseX < (x2+27) && mouseY > (y2-15) && mouseY < (y2+15)) {
    
        scale(1.2);
        image(pickimage_large, x2/1.2, y2/1.2, 55, 61);
        scale(1/1.2);
        
        if (mousePressed == true) {
          player_2_picked = 1;
          
        }
        
      }
    }
  }
}

      
