int winner;
float tempXX,tempYY;
boolean end=true;
int die=0;
int finishValue=0;
void finalBomb(){
  
  if(top1.hp<=0&&game_start==1)
  {
     die=1;
     if(end==true){ 
      tempXX=(int)top1.locX;
      tempYY=(int)top1.locY;
     
      end=false;
      event_die=1;
     
     }
    winner=2;
    top1.aVelocity=0;
    explosion1.starta(collisonCheck,(int)tempXX,(int)tempYY, event_die);
    explosion1.draw_explosion();
    
  }
  if(top2.hp<=0&&game_start==1){
    die=2;
   if(end==true){ 
    tempXX=(int)top2.locX;
    tempYY=(int)top2.locY;
     end=false;
     event_die=1;
      
    }
   
    winner=1;
    top2.aVelocity=0;
   
   explosion1.starta(collisonCheck,(int)tempXX,(int)tempYY, event_die);
   event_die=0;
   
   explosion1.draw_explosion();
  }
  
  finishValue++;
  finishGame(finishValue);
  println(finishValue);

}

void finishGame(int a){
  if(a>190){
   if(winner==1)
   {
    image(user1win,500,312.5,1000,625);
   }
   if(winner==2)
   {
    image(user2win,500,312.5,1000,625);
   }
    
    
  }
  if(mousePressed==true)
  reGame();

}



void reGame(){
  end=true;
  
    player_1_picked = 0;
    player_2_picked = 0;
    topBoolean=false;
    attackcheck=false;
    topNum=0; 
    top1.hp=1;
    top2.hp=1;
    die=0;
    finishValue=0;
    game_start=0;
   top1.locX=273;
   top1.locY=110;
   top2.locX=737;
   top2.locY=524;
   top1.hp=1;
   top2.hp=1;
   top1.angle=0;
   top2.angle=0;
   top1.aVelocity=0;
   top2.aVelocity=0;
   turn=1;
   event_die=0;

}
