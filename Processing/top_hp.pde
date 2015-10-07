
PImage topimage_city;
PImage topimage_golden;
PImage topimage_purple;
PImage topimage_blue;

PImage topimage_city_dead;
PImage topimage_golden_dead;
PImage topimage_purple_dead;
PImage topimage_blue_dead;



class TopHP {
  float s, s2; //speed or health
  float p, p2; //strength or power
  float x,y;  //location
  float v3 = 1;
  
  int wait = 500;
  
  void draw_top(float tempP, float tempS, int side, int type ) {
    
    float savedTime = millis();
    
    
    
    if (side == 1) {
      
      x = 100;
      y = 500;
      
      if (savedTime % 10 == 1) {
        
        v3 = random(1, 10);
        
      }
     
     
      // input sensor value into p
      p = map(tempP, 0, 100, 0, 125);
      
      int p_int = ceil(p);
      
      // input sensor value into s
     
     if(tempS>=100)
       tempS=100;
    
      
      s = (map(tempS, 0, 100, 35,0)) / v3;
     
      
      translate(x,y);
      
      //// city
      if (type == 1) {
        
        if (tempS <=1) {
          translate(40 * tan(radians(35)), 0);
          rotate(radians(35));
          image(topimage_city_dead, 0, 0, 140, 120);
          rotate(radians(-35));
           translate(-(40 * tan(radians(35))), 0);
        } else {
        
          translate(40 * tan(radians(s)), 0);
          rotate(radians(-s) );
          image(topimage_city, 0, 0, 140, 120);
          rotate(radians(s) );
          translate(-(40 * tan(radians(s))), 0);
          
          
          translate((40 * tan(radians(-s))), 0);
          rotate(radians(-s) );
          image(topimage_city, 0, 0, 140, 120);
          rotate(radians(s) );
          translate(-(40 * tan(radians(-s))), 0);
        }
        
      } else if (type == 2) {
        
        if (tempS <=1) {
          translate(40 * tan(radians(35)), 0);
          rotate(radians(35));
          image(topimage_golden_dead, 0, 0, 140, 120);
          rotate(radians(-35));
          translate(-(40 * tan(radians(35))), 0);
        } else {
        
          translate(40 * tan(radians(s)), 0);
          rotate(radians(s) );
          image(topimage_golden, 0, 0, 140, 120);
          rotate(radians(-s) );
          translate(-(40 * tan(radians(s))), 0);
          
          
          translate((40 * tan(radians(-s))), 0);
          rotate(radians(-s) );
          image(topimage_golden, 0, 0,140, 120);
          rotate(radians(s) );
          translate(-(40 * tan(radians(-s))), 0);
          
        }
          
      } else if (type == 3) {
        
        if (tempS <=1) {
          translate(40 * tan(radians(35)), 0);
          rotate(radians(35));
          image(topimage_blue_dead, 0, 0, 140, 120);
          rotate(radians(-35));
          translate(-(40 * tan(radians(35))), 0);
        } else {
        
          translate(40 * tan(radians(s)), 0);
          rotate(radians(s) );
          image(topimage_blue, 0, 0, 140, 120);
          rotate(radians(-s) );
          translate(-(40 * tan(radians(s))), 0);
          
          
          translate((40 * tan(radians(-s))), 0);
          rotate(radians(-s) );
          image(topimage_blue, 0, 0, 140, 120);
          rotate(radians(s) );
          translate(-(40 * tan(radians(-s))), 0);
        }
        
      } else if (type == 4) {
        
        if (tempS <=1) {
          translate(40 * tan(radians(35)), 0);
          rotate(radians(35));
          image(topimage_purple_dead, 0, 0, 140, 120);
          rotate(radians(-35));
          translate(-(40 * tan(radians(35))), 0);
        } else {
        
        translate(40 * tan(radians(s)), 0);
        rotate(radians(s) );
        image(topimage_purple, 0, 0, 140, 120);
        rotate(radians(-s) );
        translate(-(40 * tan(radians(s))), 0);
        
        
        translate((40 * tan(radians(-s))), 0);
        rotate(radians(-s) );
        image(topimage_purple, 0, 0, 140, 120 );
        rotate(radians(s) );
        translate(-(40 * tan(radians(-s))), 0);
        }
      }
      
      
      
      translate(-x, -y);
      
      
      
      

      
    } else {
      
      x = 900;
      y = 500;
      
      
      if (savedTime % 10 == 1) {
        
        v3 = random(1, 5);
        
      }     

     
      // input sensor value into p
      p = map(tempP, 0, 100, 0, 125);
      
      int p_int = ceil(p);
      //
      
      // input sensor value into s
     if(tempS>=100)
       tempS=100;
    
      
      s = (map(tempS, 0, 100, 35,0)) / v3;
     
     
      
     translate(x,y);
      
      
     //// city
      if (type == 1) {
        
        if (tempS <=1) {
          translate(40 * tan(radians(-35)), 0);
          rotate(radians(-35));
          image(topimage_city_dead, 0, 0, 140, 120);
          rotate(radians(35));
          translate(-(40 * tan(radians(-35))), 0);
        } else {
        
          translate(40 * tan(radians(s)), 0);
          rotate(radians(s) );
          image(topimage_city, 0, 0, 140, 120);
          rotate(radians(-s) );
          translate(-(40 * tan(radians(s))), 0);
          
          
          translate((40 * tan(radians(-s))), 0);
          rotate(radians(-s) );
          image(topimage_city, 0, 0, 140, 120);
          rotate(radians(s) );
          translate(-(40 * tan(radians(-s))), 0);
        }
        
      } else if (type == 2) {
        
        if (tempS <=1) {
          translate(40 * tan(radians(-35)), 0);
          rotate(radians(-35));
          image(topimage_golden_dead, 0, 0, 140, 120);
          rotate(radians(35));
          translate(-(40 * tan(radians(-35))), 0);
        } else {
        
          translate(40 * tan(radians(s)), 0);
          rotate(radians(s) );
          image(topimage_golden, 0, 0, 140, 120);
          rotate(radians(-s) );
          translate(-(40 * tan(radians(s))), 0);
          
          
          translate((40 * tan(radians(-s))), 0);
          rotate(radians(-s) );
          image(topimage_golden, 0, 0,140, 120);
          rotate(radians(s) );
          translate(-(40 * tan(radians(-s))), 0);
          
        }
          
      } else if (type == 3) {
        
        if (tempS <=1) {
          translate(40 * tan(radians(-35)), 0);
          rotate(radians(-35));
          image(topimage_blue_dead, 0, 0, 140, 120);
          rotate(radians(35));
          translate(-(40 * tan(radians(-35))), 0);
        } else {
        
          translate(40 * tan(radians(s)), 0);
          rotate(radians(s) );
          image(topimage_blue, 0, 0, 140, 120);
          rotate(radians(-s) );
          translate(-(40 * tan(radians(s))), 0);
          
          
          translate((40 * tan(radians(-s))), 0);
          rotate(radians(-s) );
          image(topimage_blue, 0, 0, 140, 120);
          rotate(radians(s) );
          translate(-(40 * tan(radians(-s))), 0);
        }
        
      } else if (type == 4) {
        
        if (tempS <=1) {
          translate(40 * tan(radians(-35)), 0);
          rotate(radians(-35));
          image(topimage_purple_dead, 0, 0, 140, 120);
          rotate(radians(35));
          translate(-(40 * tan(radians(-35))), 0);
        } else {
        
        translate(40 * tan(radians(s)), 0);
        rotate(radians(s) );
        image(topimage_purple, 0, 0, 140, 120);
        rotate(radians(-s) );
        translate(-(40 * tan(radians(s))), 0);
        
        
        translate((40 * tan(radians(-s))), 0);
        rotate(radians(-s) );
        image(topimage_purple, 0, 0, 140, 120 );
        rotate(radians(s) );
        translate(-(40 * tan(radians(-s))), 0);
        }
      }
    
      
      translate(-x, -y);
      
     
    }

  }
}
