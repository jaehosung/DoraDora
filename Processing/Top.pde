//class about top
//JH
PImage _player_city;
PImage _player_golden;
PImage _player_blue;
PImage _player_purple;

PImage __player_city;
PImage __player_golden;
PImage __player_blue;
PImage __player_purple;

class Top {
  float hp=1; //health strength
  //setLocation
  float locX; //Location of x axis
  float locY; //Location of x axis
  // 2D motion
  float speed;
  float rad_direction;
  //Rotating motion
  float angle=0;
  float aVelocity=0;
  //Shape
  PImage topShape;
  PImage userShape;
  float count=0;
  float X0=249;
  float Y0=88;
  float WIDTH=512;
  float HEIGHT=458;
  float X;
  float Y;
  float attack;
 
Top(float temphp, int topPick, PImage _userShape){
    userShape=_userShape;
  }
void pickTop(int topPick,float a)
{
  if(a>1){
    aVelocity=10;
  switch(topPick) {
        case 1: 
          topShape=_player_city; 
          break;
        case 2: 
          topShape=_player_golden;  
          break;
        case 3: 
          topShape=_player_blue; 
          break;
        case 4: 
          topShape=_player_purple;  
          break;
        default:
          break;
      }
  }
   if(a<=1){
  switch(topPick) {
        case 1: 
          topShape=__player_city; 
          break;
        case 2: 
          topShape=__player_golden;  
          break;
        case 3: 
          topShape=__player_blue; 
          break;
        case 4: 
          topShape=__player_purple;  
          break;
        default:
          break;
      }
  }
  

}
void  move()
   {
     locX=locX+speed*cos(rad_direction);
     locY=locY+speed*sin(rad_direction);
   
     locX=X0+normalized(locX-X0,1);
     locY=Y0+normalized(locY-Y0,2);

   }

void setMotion(float tempS,float tempR)
  {
    speed=tempS;
    rad_direction=tempR;
  }
  
void  setLocation(float tempX, float tempY)
    {
      locX = tempX;
      locY = tempY;
    }
    
   // go to the frame or not
 
boolean goout=false;

 float x=0.9;

    
    
    
void  changeDirection()
  {
    rad_direction=PI+rad_direction;
  }
    
void rotateDisplay()
    {
      move();
      angle=angle+aVelocity;
      pushMatrix();
      translate(locX,locY);
      //println(X+"   "+ Y);
      rotate(angle); //100 value can be deleted 
      image(topShape,0,0,200,200); 
      
      popMatrix();

      image(userShape,locX+30,locY-30,userShape.width/5,userShape.height/5);
    }
    
float normalized(float k, int wh){ // wh==1: width, w==2: height
  float size = (wh==1?WIDTH:HEIGHT);
  if (k < 0){
    k = -k;
    rad_direction=(wh==1?PI:2*PI)-rad_direction;
    speed=floor(speed*0.7);
  }else if(k > size){
    speed=floor(speed*0.7);
    rad_direction=(wh==1?PI:2*PI)-rad_direction;  
  }else{
    return k;
  }
  
  int q = floor(k/size);
  float m = k-(size*q);
  if(q%2==1){
    return size-m;
  }else{
    return m;
  }
}

}


    

 /*
   void display()
      {
        shape(topShape,locX,locY,topShape.width,topShape.height);   
      }
      
void frameCheck()
   {
     
     if((locX<=197+(topShape.height*0.6)||locX>=795-(topShape.height*0.6))&&goout==false){
        speed=floor(speed*0.7);
        rad_direction=PI-rad_direction;
        goout=true;
     //   speed=speed*0.7;
      
       }
       
     if((locY>=606-(topShape.height*0.6)||locY<=33+(topShape.height*0.6))&&goout==false){
        speed=floor(speed*0.7);
         rad_direction=(2*PI)-rad_direction;
        speed=speed*0.7;
        
       }
        if((locX>220+(topShape.height*0.6)&&locX<780-(topShape.height*0.6))&&goout==true){
        goout=false;
       }
       
     if((locY<580-(topShape.height*0.6)&&locY>70+(topShape.height*0.6))&&goout==true){
       goout=false;
       }
   } 
   
*/
 



