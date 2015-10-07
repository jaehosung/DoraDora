
boolean topBoolean=false;
float _valueAttack;
boolean attackcheck=false;

void attackStart(){
if(bPressed()==true )
{
  attack.start();
  _valueAttack=value1;
  topBoolean= !topBoolean;
  delay(500);
  attackcheck=true;
}

}
int[] sound3 = {0,0,0,0,0,0,0};
int attackSettingSound = 1;
void attackSetting(){ 
   if(topBoolean==true&& attackcheck==true){
     top1.attack=(value1-_valueAttack)*2/3;
       hp.elapsedTime();
     int a = hp.elapsedTime/1000;
  
      switch(a) {
     
        
        case 1:
        if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
         
          image(count3, 511, 177, 128,176); 
          break;
        case 2: 
          if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          image(count2, 511, 177, 128,176);  
       
          break;
        case 3: 
       if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound = 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          image(count1, 511, 177, 128,176);  
          break;
        default:

          break;
      }
     if(attack.isFinished()){
       attackcheck=false;
     } 
       
   }
   
   if(topBoolean==false&& attackcheck==true){ 
     top2.attack=(value1-_valueAttack)*2/3;
       hp.elapsedTime();
     int a = hp.elapsedTime/1000;
  
      switch(a) {
        
        case 1:
        if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          image(count3, 511, 177, 128,176); 
          
          break;
        case 2: 
        if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          image(count2, 511, 177, 128,176);  
          break;
        case 3: 
        if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound = 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          image(count1, 511, 177, 128,176);  
          break;
        default:
          break;
      }
   if(attack.isFinished()) 
     {attackcheck=false;}
   }
}
