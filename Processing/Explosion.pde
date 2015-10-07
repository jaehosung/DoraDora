
class Explosion {
  float x,y; // location
  int youdie;
  
  
 
  void starta(int var, int tempX, int tempY, int die) {
    
    if (die == 1) {
      event_die = 0;
      youdie = 1;
    }
    
    if (youdie == 1) {
      die_effect[0] = 1;
      die_effect[1] = tempX;
      die_effect[2] = tempY;
      die_effect[3] = 0;
      youdie = 0;
      
      println("die_effect on");
    }
    
    
    
    
    if (var == 1) {
      event_collide = 0; 
      collisonCheck=0;
      explode = 1;
    };
    
    if (explode == 1) {
      
   
      if (effect01[0] == 0){
       effect01[0] = 1;
       effect01[1] = tempX;
       effect01[2] = tempY;
       effect01[3] = 0;
       explode = 0;
       
       println("effect01 on");
       
      } else {
        if (effect02[0] == 0) {
          effect02[0] = 1;
          effect02[1] = tempX;
          effect02[2] = tempY;
          effect02[3] = 0;
          explode = 0;
          
          println("effect02 on");
          
         } else {
          if (effect03[0] == 0) {
           effect03[0] = 1;
           effect03[1] = tempX;
           effect03[2] = tempY;
           effect03[3] = 0;
           explode = 0;
         
           println("effect03 on");

        }
       }
      }
    }
  }
  
  
  
  
  
  
  
  
  void draw_explosion() {
   
    
    if (effect01[0] == 1) {
      
      effect01[3] = effect01[3] + 10;
      
      
      
      float x11 = float(effect01[1]) + (float(effect01[3]) * 0.3);
      float y11 = float(effect01[2]) + float(effect01[3]);
      float x12 = float(effect01[1]) + (float(effect01[3]) * -0.7);
      float y12 = float(effect01[2]) + float(effect01[3]);
      float x13 = float(effect01[1]) + (float(effect01[3]) * 0.4);
      float y13 = float(effect01[2]) + -float(effect01[3]);
      float x14 = float(effect01[1]) + (float(effect01[3]) * -0.7);
      float y14 = float(effect01[2]) + (float(effect01[3]) * 1.6);
      float x15 = float(effect01[1]) + (float(effect01[3]) * 1.6);
      float y15 = float(effect01[2]) + -float(effect01[3]);
      float x16 = float(effect01[1]) + (float(effect01[3]));
      float y16 = float(effect01[2]) + (float(effect01[3])*0.1);
      float x17 = float(effect01[1]) + (float(effect01[3]) * 1.3);
      float y17 = float(effect01[2]) + (float(effect01[3]) * 1.4);
      float x18 = float(effect01[1]) + (float(effect01[3]) * 1.5);
      float y18 = float(effect01[2]) + (-float(effect01[3])*1.2);
      float x19 = float(effect01[1]) + (float(effect01[3]) * 1.0);
      float y19 = float(effect01[2]) + (-float(effect01[3])*0.6);
      float x111 = float(effect01[1]) + (-float(effect01[3]) * 1.0);
      float y111 = float(effect01[2]) + (-float(effect01[3])*0.6);
      float x112 = float(effect01[1]) + (-float(effect01[3]) * 0.3);
      float y112 = float(effect01[2]) + (-float(effect01[3])*1.8);
      float x113 = float(effect01[1]) + (-float(effect01[3]) * 0.4);
      float y113 = float(effect01[2]) + (-float(effect01[3])*0.6);
      
      noStroke();
     
      fill(241, 254, 178);     
      rect(x11 , y11, 10, 10);
     
      
      fill(157, 246, 101);
      
      rect(x12 , y12, 5, 5);
     
      
      fill(52, 220, 210);
      
      
      rect(x13, y13, 10, 10);
      
      
      fill(28, 148, 90);
      rect(x14 , y14, 10, 10);
      
      fill(241, 254, 178);
      rect(x15 , y15, 10, 10);
      
      fill(157, 246, 101);
      rect(x16 , y16, 10, 10);
      
      fill(52, 220, 210);
      rect(x17 , y17, 5, 5);
      
      fill(28, 148, 90);
      rect(x18 , y18, 10, 10);
      
      fill(241, 254, 178);
      rect(x19 , y19, 5, 5);
      
      fill(157, 246, 101);
      rect(x111 , y111, 10, 10);
      
      fill(157, 246, 101);
      rect(x112 , y112, 5, 5);
      
      fill(241, 254, 178);
      rect(x113 , y113, 10, 10);
      
      
      
      
      // you have to stop this function when it goes out of the screen
      
      if (effect01[3] > 600) {
        effect01[0] = 0;
        println("effect01 off");
      }
    
  
    } 
    
    if (effect02[0] == 1) {
      
      effect02[3] = effect02[3] + 10;
      
      float x11 = float(effect02[1]) + (float(effect02[3]) * 0.3);
      float y11 = float(effect02[2]) + float(effect02[3]);
      float x12 = float(effect02[1]) + (float(effect02[3]) * -0.7);
      float y12 = float(effect02[2]) + float(effect02[3]);
      float x13 = float(effect02[1]) + (float(effect02[3]) * 0.4);
      float y13 = float(effect02[2]) + -float(effect02[3]);
      float x14 = float(effect02[1]) + (float(effect02[3]) * -0.7);
      float y14 = float(effect02[2]) + (float(effect02[3]) * 1.6);
      float x15 = float(effect02[1]) + (float(effect02[3]) * 1.6);
      float y15 = float(effect02[2]) + -float(effect02[3]);
      float x16 = float(effect02[1]) + (float(effect02[3]));
      float y16 = float(effect02[2]) + (float(effect02[3])*0.1);
      float x17 = float(effect02[1]) + (float(effect02[3]) * 1.3);
      float y17 = float(effect02[2]) + (float(effect02[3]) * 1.4);
      float x18 = float(effect02[1]) + (float(effect02[3]) * 1.5);
      float y18 = float(effect02[2]) + (-float(effect02[3])*1.2);
      float x19 = float(effect02[1]) + (float(effect02[3]) * 1.0);
      float y19 = float(effect02[2]) + (-float(effect02[3])*0.6);
      float x111 = float(effect02[1]) + (-float(effect02[3]) * 1.0);
      float y111 = float(effect02[2]) + (-float(effect02[3])*0.6);
      float x112 = float(effect02[1]) + (-float(effect02[3]) * 0.3);
      float y112 = float(effect02[2]) + (-float(effect02[3])*1.8);
      float x113 = float(effect02[1]) + (-float(effect02[3]) * 0.4);
      float y113 = float(effect02[2]) + (-float(effect02[3])*0.6);
      
      noStroke();
     
      fill(241, 254, 178);     
      rect(x11 , y11, 10, 10);
     
      
      fill(157, 246, 101);
      
      rect(x12 , y12, 5, 5);
     
      
      fill(52, 220, 210);
      
      
      rect(x13, y13, 10, 10);
      
      
      fill(28, 148, 90);
      rect(x14 , y14, 10, 10);
      
      fill(241, 254, 178);
      rect(x15 , y15, 10, 10);
      
      fill(157, 246, 101);
      rect(x16 , y16, 10, 10);
      
      fill(52, 220, 210);
      rect(x17 , y17, 5, 5);
      
      fill(28, 148, 90);
      rect(x18 , y18, 10, 10);
      
      fill(241, 254, 178);
      rect(x19 , y19, 5, 5);
      
      fill(157, 246, 101);
      rect(x111 , y111, 10, 10);
      
      fill(157, 246, 101);
      rect(x112 , y112, 5, 5);
      
      fill(241, 254, 178);
      rect(x113 , y113, 10, 10);
      
      
      
      
      // you have to stop this function when it goes out of the screen
      
      if (effect02[3] > 600) {
        effect02[0] = 0;
        println("effect02 off");
      }
    
    }
    
    
    
    if (effect03[0] == 1) {
      
       effect03[3] = effect03[3] + 10;
      
      float x11 = float(effect03[1]) + (float(effect03[3]) * 0.3);
      float y11 = float(effect03[2]) + float(effect03[3]);
      float x12 = float(effect03[1]) + (float(effect03[3]) * -0.7);
      float y12 = float(effect03[2]) + float(effect03[3]);
      float x13 = float(effect03[1]) + (float(effect03[3]) * 0.4);
      float y13 = float(effect03[2]) + -float(effect03[3]);
      float x14 = float(effect03[1]) + (float(effect03[3]) * -0.7);
      float y14 = float(effect03[2]) + (float(effect03[3]) * 1.6);
      float x15 = float(effect03[1]) + (float(effect03[3]) * 1.6);
      float y15 = float(effect03[2]) + -float(effect03[3]);
      float x16 = float(effect03[1]) + (float(effect03[3]));
      float y16 = float(effect03[2]) + (float(effect03[3])*0.1);
      float x17 = float(effect03[1]) + (float(effect03[3]) * 1.3);
      float y17 = float(effect03[2]) + (float(effect03[3]) * 1.4);
      float x18 = float(effect03[1]) + (float(effect03[3]) * 1.5);
      float y18 = float(effect03[2]) + (-float(effect03[3])*1.2);
      float x19 = float(effect03[1]) + (float(effect03[3]) * 1.0);
      float y19 = float(effect03[2]) + (-float(effect03[3])*0.6);
      float x111 = float(effect03[1]) + (-float(effect03[3]) * 1.0);
      float y111 = float(effect03[2]) + (-float(effect03[3])*0.6);
      float x112 = float(effect03[1]) + (-float(effect03[3]) * 0.3);
      float y112 = float(effect03[2]) + (-float(effect03[3])*1.8);
      float x113 = float(effect03[1]) + (-float(effect03[3]) * 0.4);
      float y113 = float(effect03[2]) + (-float(effect03[3])*0.6);
      
      noStroke();
     
      fill(241, 254, 178);     
      rect(x11 , y11, 10, 10);
     
      
      fill(157, 246, 101);
      
      rect(x12 , y12, 5, 5);
     
      
      fill(52, 220, 210);
      
      
      rect(x13, y13, 10, 10);
      
      
      fill(28, 148, 90);
      rect(x14 , y14, 10, 10);
      
      fill(241, 254, 178);
      rect(x15 , y15, 10, 10);
      
      fill(157, 246, 101);
      rect(x16 , y16, 10, 10);
      
      fill(52, 220, 210);
      rect(x17 , y17, 5, 5);
      
      fill(28, 148, 90);
      rect(x18 , y18, 10, 10);
      
      fill(241, 254, 178);
      rect(x19 , y19, 5, 5);
      
      fill(157, 246, 101);
      rect(x111 , y111, 10, 10);
      
      fill(157, 246, 101);
      rect(x112 , y112, 5, 5);
      
      fill(241, 254, 178);
      rect(x113 , y113, 10, 10);
      
      if (effect03[3] > 600) {
        effect03[0] = 0;
        println("effect03 off");
      }
    }
      
      
    if (die_effect[0] == 1) {
      
       
      tint(130, 90);
      
      die_effect[3] = die_effect[3] + 2;
      
      float x11 = float(die_effect[1]) + (float(die_effect[3]) * 0.3);
      float y11 = float(die_effect[2]) + float(die_effect[3]);
      float x12 = float(die_effect[1]) + (float(die_effect[3]) * -0.7);
      float y12 = float(die_effect[2]) + float(die_effect[3]);
      float x13 = float(die_effect[1]) + (float(die_effect[3]) * 0.4);
      float y13 = float(die_effect[2]) + -float(die_effect[3]);
      float x14 = float(die_effect[1]) + (float(die_effect[3]) * -0.7);
      float y14 = float(die_effect[2]) + (float(die_effect[3]) * 1.6);
      float x15 = float(die_effect[1]) + (float(die_effect[3]) * 1.6);
      float y15 = float(die_effect[2]) + -float(die_effect[3]);
      float x16 = float(die_effect[1]) + (float(die_effect[3]));
      float y16 = float(die_effect[2]) + (float(die_effect[3])*0.1);
      float x17 = float(die_effect[1]) + (float(die_effect[3]) * 1.3);
      float y17 = float(die_effect[2]) + (float(die_effect[3]) * 1.4);
      float x18 = float(die_effect[1]) + (float(die_effect[3]) * 1.5);
      float y18 = float(die_effect[2]) + (-float(die_effect[3])*1.2);
      float x19 = float(die_effect[1]) + (float(die_effect[3]) * 1.0);
      float y19 = float(die_effect[2]) + (-float(die_effect[3])*0.6);
      float x111 = float(die_effect[1]) + (-float(die_effect[3]) * 1.0);
      float y111 = float(die_effect[2]) + (-float(die_effect[3])*0.6);
      float x112 = float(die_effect[1]) + (-float(die_effect[3]) * 0.3);
      float y112 = float(die_effect[2]) + (-float(die_effect[3])*1.8);
      float x113 = float(die_effect[1]) + (-float(die_effect[3]) * 0.4);
      float y113 = float(die_effect[2]) + (-float(die_effect[3])*0.6);
      
      float x114 = float(die_effect[1]) + (-float(die_effect[3]) * 1.1);
      float y114 = float(die_effect[2]) + (float(die_effect[3])*0.7);
      float x115 = float(die_effect[1]) + (-float(die_effect[3]) * 0.4);
      float y115 = float(die_effect[2]) + (float(die_effect[3])*1.9);
      float x116 = float(die_effect[1]) + (float(die_effect[3]) * 0.2);
      float y116 = float(die_effect[2]) + (-float(die_effect[3])*0.8);
      float x117 = float(die_effect[1]) + (float(die_effect[3]) * 7.0);
      float y117 = float(die_effect[2]) + (-float(die_effect[3])*0.4);
      float x118 = float(die_effect[1]) + (-float(die_effect[3]) * 0.2);
      float y118 = float(die_effect[2]) + (float(die_effect[3])*1.5);
      float x119 = float(die_effect[1]) + (float(die_effect[3]) * 0.5);
      float y119 = float(die_effect[2]) + (-float(die_effect[3])*0.1);
      float x120 = float(die_effect[1]) + (float(die_effect[3]) * 0.4);
      float y120 = float(die_effect[2]) + (-float(die_effect[3])*0.06);
      float x121 = float(die_effect[1]) + (float(die_effect[3]) * 0.2);
      float y121 = float(die_effect[2]) + (float(die_effect[3])*0.4);
      float x122 = float(die_effect[1]) + (float(die_effect[3]) * 0.34);
      float y122 = float(die_effect[2]) + (-float(die_effect[3])*0.65);
      float x123 = float(die_effect[1]) + (float(die_effect[3]) * 0.78);
      float y123 = float(die_effect[2]) + (float(die_effect[3])*0.62);
      float x124 = float(die_effect[1]) + (-float(die_effect[3]) * 0.31);
      float y124 = float(die_effect[2]) + (float(die_effect[3])*1.4);
      float x125 = float(die_effect[1]) + (-float(die_effect[3]) * 0.41);
      float y125 = float(die_effect[2]) + (-float(die_effect[3])*0);
      float x126 = float(die_effect[1]) + (float(die_effect[3]) * 0);
      float y126 = float(die_effect[2]) + (-float(die_effect[3])*0.64);
      float x127 = float(die_effect[1]) + (float(die_effect[3]) * 0.33);
      float y127 = float(die_effect[2]) + (float(die_effect[3])*3);
      float x128 = float(die_effect[1]) + (-float(die_effect[3]) * 5);
      float y128 = float(die_effect[2]) + (float(die_effect[3])*0.3);
      
      
      
      float x129 = float(die_effect[1]) + (-float(die_effect[3]) * 2.1);
      float y129 = float(die_effect[2]) + (float(die_effect[3])*1.7);
      float x130 = float(die_effect[1]) + (-float(die_effect[3]) * 2.4);
      float y130 = float(die_effect[2]) + (float(die_effect[3])*3.9);
      float x131 = float(die_effect[1]) + (float(die_effect[3]) * 0.2);
      float y131 = float(die_effect[2]) + (float(die_effect[3])*0);
      float x132 = float(die_effect[1]) + (-float(die_effect[3]) * 4.0);
      float y132 = float(die_effect[2]) + (-float(die_effect[3])*3.4);
      float x133 = float(die_effect[1]) + (float(die_effect[3]) * 2);
      float y133 = float(die_effect[2]) + (-float(die_effect[3])*4.5);
      float x134 = float(die_effect[1]) + (float(die_effect[3]) * 2.5);
      float y134 = float(die_effect[2]) + (-float(die_effect[3])*5.1);
      float x135 = float(die_effect[1]) + (float(die_effect[3]) * 4.4);
      float y135 = float(die_effect[2]) + (-float(die_effect[3])* 0.4);
      
      
      float x136 = float(die_effect[1]) + (-float(die_effect[3]) * 0.2);
      float y136 = float(die_effect[2]) + (-float(die_effect[3])*0.2);
      float x137 = float(die_effect[1]) + (float(die_effect[3]) * 0.34);
      float y137 = float(die_effect[2]) + (-float(die_effect[3])*0.15);
      float x138 = float(die_effect[1]) + (float(die_effect[3]) * 0.18);
      float y138 = float(die_effect[2]) + (float(die_effect[3])* 2.1);
      float x139 = float(die_effect[1]) + (-float(die_effect[3]) * 0.31);
      float y139 = float(die_effect[2]) + (float(die_effect[3])*0.14);
      float x140 = float(die_effect[1]) + (-float(die_effect[3]) * 0.41);
      float y140 = float(die_effect[2]) + (-float(die_effect[3])*0.3);
      float x141 = float(die_effect[1]) + (float(die_effect[3]) * 0);
      float y141 = float(die_effect[2]) + (-float(die_effect[3])*4.4);
      float x142 = float(die_effect[1]) + (float(die_effect[3]) * 0.33);
      float y142 = float(die_effect[2]) + (float(die_effect[3])*3);
      float x143 = float(die_effect[1]) + (-float(die_effect[3]) * 5);
      float y143 = float(die_effect[2]) + (float(die_effect[3])*0.3);
      
      
      
      float x144 = float(die_effect[1]) + (float(die_effect[3]) * 0.2);
      float y144 = float(die_effect[2]) + (float(die_effect[3])*0.2);
      float x145 = float(die_effect[1]) + (-float(die_effect[3]) * 0.34);
      float y145 = float(die_effect[2]) + (float(die_effect[3])*0.15);
      float x146 = float(die_effect[1]) + (-float(die_effect[3]) * 0.18);
      float y146 = float(die_effect[2]) + (-float(die_effect[3])* 2.1);
      float x147 = float(die_effect[1]) + (float(die_effect[3]) * 0.31);
      float y147 = float(die_effect[2]) + (-float(die_effect[3])*0.14);
      float x148 = float(die_effect[1]) + (float(die_effect[3]) * 0.41);
      float y148 = float(die_effect[2]) + (float(die_effect[3])*0.3);
      float x149 = float(die_effect[1]) + (-float(die_effect[3]) * 0);
      float y149 = float(die_effect[2]) + (float(die_effect[3])*4.4);
      float x150 = float(die_effect[1]) + (-float(die_effect[3]) * 0.33);
      float y150 = float(die_effect[2]) + (-float(die_effect[3])*3);
      float x151 = float(die_effect[1]) + (float(die_effect[3]) * 5);
      float y151 = float(die_effect[2]) + (-float(die_effect[3])*0.3);
      
      float x152 = float(die_effect[1]) + (float(die_effect[3]) * 0.3);
      float y152 = float(die_effect[2]) + (float(die_effect[3])*0.4);
      float x153 = float(die_effect[1]) + (-float(die_effect[3]) * 0.34);
      float y153 = float(die_effect[2]) + (float(die_effect[3])*0.25);
      float x154 = float(die_effect[1]) + (-float(die_effect[3]) * 2.8);
      float y154 = float(die_effect[2]) + (-float(die_effect[3])* 2.1);
      float x155 = float(die_effect[1]) + (float(die_effect[3]) * 1.31);
      float y155 = float(die_effect[2]) + (float(die_effect[3])*2.14);
      float x156 = float(die_effect[1]) + (-float(die_effect[3]) * 2.41);
      float y156 = float(die_effect[2]) + (float(die_effect[3])*0.3);
      float x157 = float(die_effect[1]) + (-float(die_effect[3]) * 0);
      float y157 = float(die_effect[2]) + (float(die_effect[3])*1.4);
      float x158 = float(die_effect[1]) + (-float(die_effect[3]) * 3.3);
      float y158 = float(die_effect[2]) + (-float(die_effect[3])*3);
      float x159 = float(die_effect[1]) + (float(die_effect[3]) * 0.5);
      float y159 = float(die_effect[2]) + (-float(die_effect[3])*0.3);
      
      float x160 = float(die_effect[1]) + (-float(die_effect[3]) * 2.1);
      float y160 = float(die_effect[2]) + (-float(die_effect[3])*0.7);
      float x161 = float(die_effect[1]) + (-float(die_effect[3]) * 2.4);
      float y161 = float(die_effect[2]) + (-float(die_effect[3])*0.9);
      float x162 = float(die_effect[1]) + (-float(die_effect[3]) * 0.2);
      float y162 = float(die_effect[2]) + (float(die_effect[3])*0);
      float x163 = float(die_effect[1]) + (-float(die_effect[3]) * 4.0);
      float y163 = float(die_effect[2]) + (-float(die_effect[3])*0.4);
      float x164 = float(die_effect[1]) + (float(die_effect[3]) * 2);
      float y164 = float(die_effect[2]) + (-float(die_effect[3])*0.5);
      float x165 = float(die_effect[1]) + (-float(die_effect[3]) * 0.1);
      float y165 = float(die_effect[2]) + (-float(die_effect[3])*1);
      float x166 = float(die_effect[1]) + (float(die_effect[3]) * 0.4);
      float y166 = float(die_effect[2]) + (-float(die_effect[3])* 1.4);
      
      
      
      
      
      float x167 = float(die_effect[1]) + (float(die_effect[3]) * 0.3);
      float y167 = float(die_effect[2]) + (float(die_effect[3])*0.4);
      float x168 = float(die_effect[1]) + (-float(die_effect[3]) * 0.34);
      float y168 = float(die_effect[2]) + (float(die_effect[3])*0.25);
      float x169 = float(die_effect[1]) + (-float(die_effect[3]) * 2.8);
      float y169 = float(die_effect[2]) + (-float(die_effect[3])* 2.1);
      float x170 = float(die_effect[1]) + (float(die_effect[3]) * 1.31);
      float y170 = float(die_effect[2]) + (float(die_effect[3])*2.14);
      float x171 = float(die_effect[1]) + (-float(die_effect[3]) * 2.41);
      float y171 = float(die_effect[2]) + (float(die_effect[3])*0.3);
      float x172 = float(die_effect[1]) + (-float(die_effect[3]) * 0);
      float y172 = float(die_effect[2]) + (float(die_effect[3])*1.4);
      float x173 = float(die_effect[1]) + (-float(die_effect[3]) * 3.3);
      float y173 = float(die_effect[2]) + (-float(die_effect[3])*3);
      float x174 = float(die_effect[1]) + (float(die_effect[3]) * 0.5);
      float y174 = float(die_effect[2]) + (-float(die_effect[3])*0.3);
      
      float x175 = float(die_effect[1]) + (-float(die_effect[3]) * 2.1);
      float y175 = float(die_effect[2]) + (-float(die_effect[3])*0.7);
      float x176 = float(die_effect[1]) + (-float(die_effect[3]) * 2.4);
      float y176 = float(die_effect[2]) + (-float(die_effect[3])*0.9);
      float x177 = float(die_effect[1]) + (-float(die_effect[3]) * 0.2);
      float y177 = float(die_effect[2]) + (float(die_effect[3])*0);
      float x178 = float(die_effect[1]) + (-float(die_effect[3]) * 4.0);
      float y178 = float(die_effect[2]) + (-float(die_effect[3])*0.4);
      float x179 = float(die_effect[1]) + (float(die_effect[3]) * 2);
      float y179 = float(die_effect[2]) + (-float(die_effect[3])*0.5);
      float x180 = float(die_effect[1]) + (-float(die_effect[3]) * 0.1);
      float y180 = float(die_effect[2]) + (-float(die_effect[3])*1);
      float x181 = float(die_effect[1]) + (float(die_effect[3]) * 0.4);
      float y181 = float(die_effect[2]) + (-float(die_effect[3])* 1.4);
      
      noStroke();
     
      fill(241, 254, 178);     
      rect(x11 , y11, 10, 10);
     
      
      fill(157, 246, 101);
      
      rect(x12 , y12, 5, 5);
     
      
      fill(52, 220, 210);
      
      
      rect(x13, y13, 10, 10);
      
      
      fill(28, 148, 90);
      rect(x14 , y14, 20, 20);
      
      fill(241, 254, 178);
      rect(x15 , y15, 10, 10);
      
      fill(157, 246, 101);
      rect(x16 , y16, 10, 10);
      
      fill(52, 220, 210);
      rect(x17 , y17, 5, 5);
      
      fill(28, 148, 90);
      rect(x18 , y18, 10, 10);
      
      fill(241, 254, 178);
      rect(x19 , y19, 5, 5);
      
      fill(157, 246, 101);
      rect(x111 , y111, 20, 20);
      
      fill(157, 246, 101);
      rect(x112 , y112, 15, 15);
      
      fill(241, 254, 178);
      rect(x113 , y113, 10, 10);
      
      
      
      
      
      fill(241, 254, 178);     
      rect(x114 , y114, 10, 10);
     
      
      fill(157, 246, 101);
      
      rect(x115 , y115, 5, 5);
     
      
      fill(52, 220, 210);
      
      
      rect(x116, y116, 15, 15);
      
      
      fill(28, 148, 90);
      rect(x117 , y117, 10, 10);
      
      fill(241, 254, 178);
      rect(x118 , y118, 10, 10);
      
      fill(157, 246, 101);
      rect(x119 , y119, 10, 10);
      
      fill(52, 220, 210);
      rect(x120 , y120, 5, 5);
      
      fill(28, 148, 90);
      rect(x121 , y121, 20, 20);
      
      fill(241, 254, 178);
      rect(x19 , y19, 5, 5);
      
      fill(157, 246, 101);
      rect(x122 , y122, 10, 10);
      
      fill(157, 246, 101);
      rect(x123 , y123, 20, 20);
      
      fill(241, 254, 178);
      rect(x124 , y124, 10, 10);
      
      fill(157, 246, 101);
      rect(x125 , y125, 15, 15);
      
      fill(52, 220, 210);
      rect(x126 , y126, 5, 5);
      
      fill(28, 148, 90);
      rect(x127 , y127, 10, 10);
      
      fill(241, 254, 178);
      rect(x128 , y128, 5, 5);
      
      
      
      
      
      fill(52, 220, 210);
      rect(x129, y129, 15, 15);
      
      
      fill(28, 148, 90);
      rect(x130 , y130, 10, 10);
      
      fill(241, 254, 178);
      rect(x131 , y131, 20, 20);
      
      fill(157, 246, 101);
      rect(x132 , y132, 10, 10);
      
      fill(52, 220, 210);
      rect(x133 , y133, 5, 5);
      
      fill(28, 148, 90);
      rect(x134 , y134, 20, 20);
      
      fill(241, 254, 178);
      rect(x135 , y135, 5, 5);
      
      fill(157, 246, 101);
      rect(x136 , y136, 10, 10);
      
      fill(157, 246, 101);
      rect(x137 , y137, 15, 15);
      
      fill(241, 254, 178);
      rect(x138 , y138, 10, 10);
      
      fill(157, 246, 101);
      rect(x139 , y139, 15, 15);
      
      fill(52, 220, 210);
      rect(x140 , y140, 5, 5);
      
      fill(28, 148, 90);
      rect(x141 , y141, 10, 10);
      
      fill(241, 254, 178);
      rect(x142 , y142, 20, 20);
      
      fill(241, 254, 178);
      rect(x143 , y143, 5, 5);
      
      
      
        
      
      
      fill(52, 220, 210);
      rect(x144, y144, 15, 15);
      
      
      fill(28, 148, 90);
      rect(x145 , y145, 25, 25);
      
      fill(241, 254, 178);
      rect(x147 , y147, 20, 20);
      
      fill(157, 246, 101);
      rect(x148 , y148, 10, 10);
      
      fill(52, 220, 210);
      rect(x149 , y149, 5, 5);
      
      fill(28, 148, 90);
      rect(x150 , y150, 20, 20);
      
      fill(241, 254, 178);
      rect(x151 , y151, 15, 15);
      
     
     
     
     
     
     
      fill(28, 148, 90);
      rect(x152 , y117, 10, 10);
      
      fill(241, 254, 178);
      rect(x153 , y118, 10, 10);
      
      fill(157, 246, 101);
      rect(x154 , y119, 10, 10);
      
      fill(52, 220, 210);
      rect(x155 , y120, 5, 5);
      
      fill(28, 148, 90);
      rect(x156 , y121, 20, 20);
      
      fill(241, 254, 178);
      rect(x157 , y19, 5, 5);
      
      fill(157, 246, 101);
      rect(x158 , y122, 10, 10);
      
      fill(157, 246, 101);
      rect(x159 , y123, 20, 20);
      
      fill(241, 254, 178);
      rect(x160 , y124, 10, 10);
      
      fill(157, 246, 101);
      rect(x161 , y125, 15, 15);
      
      fill(52, 220, 210);
      rect(x162 , y126, 5, 5);
      
      fill(28, 148, 90);
      rect(x163 , y127, 10, 10);
      
      fill(241, 254, 178);
      rect(x164 , y128, 5, 5);
      
      
      
      
      
      fill(52, 220, 210);
      rect(x165, y129, 15, 15);
      
      
      fill(28, 148, 90);
      rect(x166 , y130, 10, 10);
      
      
      
      
       if (die_effect[3] > 900) {
        die_effect[0] = 0;
        println("die_effect off");
        noTint();
       }
    }
      
  }
}

    
      
    
  
