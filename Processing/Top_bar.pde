PImage topbar;



class Topbar {
  
  float X, Y; //location of topbar
  float now_p1 =0 ;
  float saved_p1 =0;
  float now_p2 =0 ;
  float saved_p2 =0;
  
  
  void draw_topbar(float P1, float P2, int turn) {
    
    translate(500, 9);  /// dont forget to un-translate before the end.
    
    
    Y = 0;
    X = 0;
   
    
    if (turn == 1) {
     
      
     if (P1 == 0) {
       now_p1 = 0;
       saved_p1 = 0;
     }
     
     if (saved_p1 < P1) {
       
       
       
       if (now_p1 < P1) {
         now_p1 = now_p1 + 1.1; // increasing spead
         saved_p1 = now_p1;
       } else {
         now_p1 = P1;
         saved_p1 = now_p1;
       }
        
       image(topbar, 10* now_p1, Y, 1000, 18);
       
       
       
     } else { 
       
       if (now_p1 > 1) {
         now_p1 = now_p1 -0.02; // decreasing speed of 1.2
       } else { 
         now_p1 = 0;
       }
       image(topbar, 10* now_p1, Y, 1000, 18);
       
      saved_p2 =0;
      now_p2=0;
     }
       
       
        
        
     
    } else if (turn == 2) {
    
     
     if (P2 == 0) {
       now_p2 = 0;
       saved_p2 = 0;
     }
     
     if (saved_p2 < P2) {
       
       
       
       if (now_p2 < P2) {
         now_p2 = now_p2 + 1.1; // increasing spead
         saved_p2 = now_p2;
       } else {
         now_p2 = P2;
         saved_p2 = now_p2;
       }
        
       image(topbar, 10* now_p2, Y, 1000, 18);
       
       
       
     } else { 
       if (now_p2 > 1) {
         now_p2 = now_p2 - 0.02 ; // decreasing speed of 1.2
       } else { 
         now_p2 = 0;
       }
       image(topbar, 10* now_p2, Y, 1000, 18);
       
       saved_p1 =0;
      now_p1=0;
     }
       
       
        
        
      
      
    }
    
    
    
    translate(-500, -9);
  }
}

