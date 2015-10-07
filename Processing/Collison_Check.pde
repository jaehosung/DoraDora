boolean getOut=true;
int collisonCheck;
float valueAttack=3;

void collisionCheck()
   {
     float direction=sqrt((top1.locX-top2.locX)*(top1.locX-top2.locX)+(top1.locY-top2.locY)*(top1.locY-top2.locY));
     float distance=120;

      if(direction <= distance && getOut==true)
      { 
        soundplaying(_collide);
         float randomAngle;
         float velocity;
         float tan;
        tan = (top2.locY-top1.locY)/(top2.locX-top1.locX);
        collisonCheck=1;
        angle=atan(tan);
         
            if ((top2.locX-top1.locX)>0)
            {
              
              if(angle<0)
              angle=angle+2*PI;
            } else
            {
          
              angle=angle+PI;
             }
              
             
            velocity=top1.speed+top2.speed;
            top1.speed=velocity/2;
            top2.speed=velocity/2; 
            
          if(angle<=PI)
         { 
          if(angle<top1.rad_direction&&top1.rad_direction<angle+PI)
           {
             top1.rad_direction=angle+random(angle+PI/2+PI/4,angle+PI);
           }else{
             top1.rad_direction=angle+random(angle+PI,angle+3*PI/2-PI/4);           
           }
           if(angle<top2.rad_direction&&top2.rad_direction<angle+PI)
           {
             top2.rad_direction=angle+random(angle,angle+PI/2-PI/4);
           }else{
             top2.rad_direction=angle+random(angle+3*PI/2+PI/4,angle+2*PI);           
           }
        
         }else{
           angle=angle-PI;
           if(angle<=top1.rad_direction&&top1.rad_direction<=angle+PI)
           {
             top1.rad_direction=angle+random(angle,angle+PI/2-PI/4);
           }else{
             top1.rad_direction=angle+random(angle+3*PI/2+PI/4,angle+2*PI);           
           }
           if(angle<=top2.rad_direction&&top2.rad_direction<=angle+PI)
           {
              top2.rad_direction=angle+random(angle+PI/2+PI/4,angle+PI);     
           }else{
             
             top2.rad_direction=angle+random(angle+PI,angle+3*PI/2-PI/4);
                  
           }
         }
           
          background(255);
           
         
          /*
            if(turn==1){
              
             float a=random(angle+PI/2,angle+PI*3/2);
             float temp = top1.rad_direction;
             top1.rad_direction=temp+angle;
             top2.rad_direction=angle;
             velocity=top1.speed+top2.speed;
             top1.speed=velocity/2;
             top2.speed=velocity/2; 
            }else
            {
             float a=random(angle+PI/2,angle+PI*3/2);
             float temp = top1.rad_direction;
             top2.rad_direction=temp+angle;
             top1.rad_direction=angle;
             velocity=top2.speed+top1.speed;
             top1.speed=velocity/2;
             top2.speed=velocity/2; 
            }
        */
         
        ///health point
           if (turn==1)  
             top2.hp=top2.hp-top1.attack/valueAttack;
          if (turn==2)
            top1.hp=top1.hp-top2.attack/valueAttack;
           getOut=false;
           
         
      }
    if(direction > distance)
      {
        getOut=true;
      }    
     //println(direction);
         
   }
   
   
 void swap ( float a, float b){
   float temp;
   temp=a;
   a=b;
   b=temp;
 }
 

