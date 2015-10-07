// Learning Processing
// Daniel Shiffman
// http://www.learningprocessing.com

// Example 10-5: Object-oriented timer

class Timer {
 
  int savedTime; // When Timer started
  int totalTime; // How long Timer should last
  int elapsedTime= millis()-savedTime;
  
  void elapsedTime(){
    elapsedTime= millis()-savedTime;
  }
  Timer(int tempTotalTime) {
    totalTime = tempTotalTime;
  }
  
  // Starting the timer
  void start() {
    // When the timer starts it stores the current time in milliseconds.
    savedTime = millis(); 
  }
  
  // The function isFinished() returns true if 5,000 ms have passed. 
  // The work of the timer is farmed out to this method.
  boolean isFinished() { 
    // Check how much time has passed
    int passedTime = millis()- savedTime;
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
  boolean isFinishedNew(float a){
    
     int passedTime = millis()- savedTime;
      totalTime= (int)(totalTime*a);
    if (passedTime > totalTime) {
      return true;
    } else {
      return false;
    }
  }
    
}
