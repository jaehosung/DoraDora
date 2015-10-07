float leapLocX=3000;
float leapLocY=3000;
int turn=1;

boolean start = true;
boolean check = false;
boolean startmove=true;
float sumX=0;
float sumY=0;
float firstX=0;
float firstY=0;
float count=0;
float lastX=0;
float lastY=0;

/////////////////////////

//////////////////
/*
JH
 leapExecute(); execute the leap camera
 leapTracking(); follow the point of leap location
 
 
 */


void leapExecute() {
  float x=0;
  float y=0;
  int a=0;
  for (Map.Entry entry : fingerPositions.entrySet ())
  {
    Integer fingerId = (Integer) entry.getKey();
    Vector position = (Vector) entry.getValue();
    fill(fingerColors.get(fingerId));
    noStroke();
    x=x+leapMotion.leapToSketchX(position.getX());
    y=y+leapMotion.leapToSketchY(position.getY());
    a++;
  }

  leapLocX=x/a;
  leapLocY=y/a;
  if(leapLocX<200){
    leapLocX=200;}
  if(leapLocX>800)
  {
    leapLocX=800;
  }
  leapLocY=map(leapLocY, 580, 380, 625, 0);
  if(leapLocY<46){
    leapLocY=46;}
  if(leapLocY>589)
  {
    leapLocY=589;
  }
    
 
  
  
 // print(leapLocX, "   ", leapLocY);
}



void leapTracking()
{
  image(cursor,leapLocX, leapLocY);
}

float interval=50;
int limit = 10;
float tan;


int i=0;
int j=0;
float angle=0; 
void leapSlope() {

  float distance=0; 

  //println(timer.elapsedTime);
  //println(start);
  //println( firstX + "   "  + firstY + "   " + lastX + "   " + lastY);
  timer.elapsedTime();

  // println("count  "+i+" start : " +start + "   firstX : "+firstX+ "   firstY : "+firstY+ "   sumX : "+sumX+ " sumY : "+sumY+ " distance : "+distance+"   i "  + i + "  elapsedTime " +timer.elapsedTime + "  angle  " + angle+ "  turn  " + turn);
  // println(" 1 " + top1.hp + " 2 " + top2.hp);
  int a = floor(timer.elapsedTime/interval);

  float tempX=0;
  float tempY=0;
  if (turn==1) {
    tempX=top1.locX;
    tempY=top1.locY;
  }  else
  {
    tempX=top2.locX;
    tempY=top2.locY;
  }

  distance = abs(leapLocX-tempX)+abs(leapLocY-tempY); //print(distance);

  if (distance<=10 &&(leapLocX>0 &&leapLocY>0)&&start==true)
  {
    timer.start();
    firstX = leapLocX;
    firstY = leapLocY;
    sumX=firstX;
    sumY=firstY;
    start=false;
    delay(500);
    i=1;
  }
  if (start==false&&check==false)
  {
    timer.start(); 
    check=true;
  }
  if (a==i&&start==false)
  {
    sumX=sumX+leapLocX;
    sumY=sumY+leapLocY;
    count++;
    i++;
  }
  if (i==limit&&start==false)
  {
    lastX=sumX/(i+1);
    lastY=sumY/(i+1);    
    start=true;
    //println("line");
    println(lastX+"   " + lastY);
    tan = (lastY-tempY)/(lastX-tempX);
    startmove=false;

    if ((lastX-tempX)>0)
    {
      angle=atan(tan);
    } else
    {
      angle=atan(tan);
      angle= angle + PI;
    }

    if (turn==1)  
      top1.setMotion(80, angle);
    if (turn==2)
      top2.setMotion(80, angle);
  }


  if (timer.elapsedTime>5000 && startmove==false)
  {
    if (turn==1) {
      turn=2;
      j=2;
      top1.speed=0;
      top2.speed=0;
      println(turn);
      timer.start();
    } else
    {

      j=1;
      top1.speed=0;
      top2.speed=0;      
      timer.start();
      turn=1;
    }
    check=false;
    start=true;
    startmove=true;
  }
}


///////////////////////////////////////////////////////

void onFrame(final Controller controller)
{
  Frame frame = controller.frame();
  fingerPositions.clear();
  for (Finger finger : frame.fingers ())
  {
    int fingerId = finger.id();
    color c = color(12, 13, 103);
    fingerColors.putIfAbsent(fingerId, c);
    fingerPositions.put(fingerId, finger.tipPosition());
  }
}

/*
top1.speed=floor(top1.speed*0.8);
 top2.speed=floor(top1.speed*0.8);
 
 */
