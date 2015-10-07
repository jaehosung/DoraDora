

int topNum=0;
float _value;

void hpStart(){
    
    int x = 514;
    int y = 258;
    int x2 = 520;
    int y2 = 474;
  
if(bPressed()==true &&  game_start==1)
{
  hp.start();
  _value=value1;
  topNum++;
  delay(500);
  hpcheck=true;
}

}


boolean hpcheck=true;
void hpSetting(){ 
   if(topNum==1&& hpcheck==true){
     top1.hp=1+value1-_value;
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
            image(count5, 511, 177, 128,176);
          break;
        case 2: 
          image(count4, 511, 177, 128,176);  
             if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
        
          break;
        case 3: 
          image(count3, 511, 177, 128,176); 
              if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          break;
        case 4: 
          image(count2, 511, 177, 128,176);  
             if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          break;
        case 5: 
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
     
     
     if(hp.isFinished()){
       hpcheck=false;
     } 
       
   }
   
   if(topNum==2&&hpcheck==true){ 
     top2.hp=1+value1-_value;
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
          image(count5, 511, 177, 128,176);
          break;
        case 2: 
         if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          image(count4, 511, 177, 128,176);  
          break;
        case 3: 
          if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          image(count3, 511, 177, 128,176); 
          break;
        case 4: 
          if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound += 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          image(count2, 511, 177, 128,176);  
          break;
        case 5: 
        if(!_counter.isPlaying() && attackSettingSound == a){
          attackSettingSound = 1;
           _counter.rewind();
          _counter.play();
          //_counter.loop(1);  
        }
          image(count1, 511, 177, 128,176);  
          
          break;
        case 6:
          
        default:
          break;
      }
     
     
   if(hp.isFinished()) 
     {hpcheck=false;
     
    }
   }

}
