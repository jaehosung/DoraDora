//JH
//////////////Sound///////////
import ddf.minim.*;
Minim minim;
AudioPlayer _boing;
AudioPlayer _choosing;
AudioPlayer _collide;
AudioPlayer _counter;
AudioPlayer _ending;
AudioPlayer _startgame;
AudioPlayer _bgm;
int volume = -15;

///////////////////////////////


PImage network;
PImage network2;
PImage network3;
PImage top;
PImage user1;
PImage user2;
PImage user1win;
PImage user2win;

PImage count1;
PImage count2;
PImage count3;
PImage count4;
PImage count5;

PImage cursor;
PImage startgame;

Pick pick1;
Pick pick2;

Timer timer;
Timer attack;
Timer hp;

TopHP tophp1;
TopHP tophp2; // Two Top object

Topbar topbar1;

Frontdoor frontdoor;
  
Top top1;
Top top2;
Explosion explosion1;
Explosion explosion2;
/////LEAPMOTION PART///////////////////////////////////
  
import java.util.Map;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentHashMap;

import com.leapmotion.leap.Controller;
import com.leapmotion.leap.Finger;
import com.leapmotion.leap.Frame;
import com.leapmotion.leap.Hand;
import com.leapmotion.leap.Tool;
import com.leapmotion.leap.Vector;
import com.leapmotion.leap.processing.LeapMotion;

LeapMotion leapMotion;

ConcurrentMap<Integer, Integer> fingerColors;
ConcurrentMap<Integer, Integer> toolColors;
ConcurrentMap<Integer, Vector> fingerPositions;
ConcurrentMap<Integer, Vector> toolPositions;
////////////////////////////////////////////////////////

int event_collide = 0; 
int x_collide = 500;  /// where players collide!!
int y_collide = 300;  /// where players collide!!

int explode = 0;
int event_die = 0;  ///  0-> normal  1-> player 1 die  2 -> player 2 die

int[] effect01 = new int[4];
int[] effect02 = new int[4];
int[] effect03 = new int[4];
int[] die_effect = new int[4];

int player_1_picked = 0;
int player_2_picked = 0;

int type_1 = 1; // City -> 1 Golden -> 2 Blue -> 3 Purple -> 4
int type_2 = 4; // City -> 1 Golden -> 2 Blue -> 3 Purple -> 4


/////////////////////////////////////////////////////////

void setup(){
  /////LEAPMOTION PART/////
  leapMotion = new LeapMotion(this);
  fingerColors = new ConcurrentHashMap<Integer, Integer>();
  toolColors = new ConcurrentHashMap<Integer, Integer>();
  fingerPositions = new ConcurrentHashMap<Integer, Vector>();
  toolPositions = new ConcurrentHashMap<Integer, Vector>();
  
  /////////////////////////
  /////////////////////////
  timer = new Timer(1000);
  timer.start();
  
  /////////////////////////
  size(1000,625);
  smooth();
  imageMode(CENTER);
  shapeMode(CENTER);
  
  network = loadImage("background.png");
  network2= loadImage("top1.png");
  network3= loadImage("top2.png");
  user1= loadImage("user1.png");
  user2= loadImage("user2.png");
  user1win= loadImage("user1_win.png");
  user2win= loadImage("user2_win.png");
  topbar= loadImage("topbar.png");
  ////////////////////////////////////
  topimage_city = loadImage("top2.0.png");
  topimage_blue = loadImage("top4.0.png");
  topimage_golden = loadImage("top3.0.png");
  topimage_purple = loadImage("top1.0.png");
  
  topimage_city_dead = loadImage("top2.5.png");
  topimage_blue_dead = loadImage("top4.5.png");
  topimage_golden_dead = loadImage("top3.5.png");
  topimage_purple_dead = loadImage("top1.5.png");
  cursor=loadImage("cursor.png");
  startgame=loadImage("startgame.png");
  count1=loadImage("count_1.png");
  count2=loadImage("count_2.png");
  count3=loadImage("count_3.png");
  count4=loadImage("count_4.png");
  count5=loadImage("count_5.png");
  
  //////////////////////////////////////
  _player_city = loadImage("top2.png");
  _player_golden = loadImage("top3.png");
  _player_blue = loadImage("top4.png");
  _player_purple = loadImage("top1.png");
  
  __player_city = loadImage("top2.1.png");
  __player_golden = loadImage("top3.1.png");
  __player_blue = loadImage("top4.1.png");
  __player_purple = loadImage("top1.1.png");
  
  
  player_city = loadImage("top2.4.png");
  player_golden = loadImage("top3.4.png");
  player_blue = loadImage("top4.4.png");
  player_purple = loadImage("top1.4.png");
  
  pickimage_large = loadImage("pickimage_large.png");
  player_picked = loadImage("player_picked.png");
  
  doradora = loadImage("doradora_100.png");
  start_button = loadImage("start_button.png");
  ////////////////////////////////////
 
  
  topbar1 = new Topbar();
  top1 = new Top(10,type_1,user1);
  top1.setLocation(273,110);
  top1.setMotion(0,PI*0.3);
  tophp1 = new TopHP();
  tophp2 = new TopHP();
  
  
  top2 = new Top(10,type_2,user2);
  top2.setLocation(737,524);
  top2.setMotion(0,PI*0.2);
  /////////serial//////////////
  myPort = new Serial(this, Serial.list()[0], 9600);
  myPort.clear();
  myString = myPort.readStringUntil(lf);
  myString = null;
  hp = new Timer(6000);
  attack = new Timer(4000);
  
  frontdoor = new Frontdoor();
  ////////////////////////////
  explosion1 = new Explosion();
  explosion2 = new Explosion();
  
  pick1 = new Pick();
  pick2 = new Pick();
  ////////////////
  minim = new Minim(this);
  _boing = minim.loadFile("boing.wav");
  _choosing = minim.loadFile("choosing.wav");
  _collide = minim.loadFile("collide.wav");//end
  _counter = minim.loadFile("Counter.mp3");//
  _ending = minim.loadFile("ending.mp3");//end
  _startgame = minim.loadFile("Startgame.mp3");


  _bgm = minim.loadFile("bgm1.mp3");
  _bgm.loop();
  _bgm.setGain(volume);
  //////////////////
  
}
void draw()
{
   background(0);
   
  image(network,500,312.5,1000,625);
  frontdoor.draw_dora(game_start);
  if(game_start==1){
  soundplayingInterval(_startgame,game_start);
  hpStart();
  hpSetting();
  if(topNum>=3){ 
  attackStart();
  attackSetting();
  }
  
  println("turn     " + turn+ "        " + mouseX+ "        " + mouseY + "                " + value1 + "               " + value2);
  println("========================================================================================================");
  println( "hp1     " + top1.hp + "     attack1     " + top1.attack/valueAttack);
  println( "hp2     " + top2.hp + "     attack2     " + top2.attack/valueAttack);
  println("========================================================================================================");
 
    top1.pickTop(type_1,top1.hp);
    top2.pickTop(type_2,top2.hp);
    pick1.draw_pick(1); 
    pick2.draw_pick(2);
    
    pick1.draw_player(type_1, 1);
    pick2.draw_player(type_2, 2);
  if(die!=1)
   top1.rotateDisplay();
  if(die!=2)
   top2.rotateDisplay();
  if(die==1||die==2){
  }
  
  else{
   collisionCheck();
  }
   explosion1.starta(collisonCheck,(int)top1.locX,(int)top1.locY, 0);
   explosion1.draw_explosion();
   explosion1.starta(collisonCheck, (int)top2.locX, (int)top2.locY, 0);
   explosion1.draw_explosion();
   leapExecute();
   leapTracking();
   leapSlope();
   topbar1.draw_topbar(top1.attack, top2.attack,turn);

    if(top1.hp<=0||top2.hp<=0){
     finalBomb();
     soundplayingInterval(_ending,die);
  }

  tophp1.draw_top(top1.attack , top1.hp, 1, type_1);
  tophp2.draw_top(top2.attack , top2.hp, 2, type_2);
    

  
  }
  
}



