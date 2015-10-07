
void soundplaying( AudioPlayer temp){
  temp.rewind();
  temp.play() ;
}

void soundplayingOnce( AudioPlayer temp){
  temp.rewind();
  temp.play() ;
}


void soundplayingInterval( AudioPlayer temp, int a){
  if(a!=0){
    temp.play();
  }
  if(!temp.isPlaying()){
    a=0;
    temp.rewind();
  }
}

void soundplayingInterval2( AudioPlayer temp, int a){
  if(a==1){
    temp.rewind();
   
    temp.play();
    
  }
  if(!temp.isPlaying()){
    a=0;
  }
}

