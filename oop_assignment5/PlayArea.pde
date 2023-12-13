class Area{
   float areaWidth;
  float areaHeight;
    Area() {
    areaWidth = 380;
    areaHeight = 150;
  }
  
  //float x/y for the obstacle//
void draw(){
     stroke(0);
     strokeWeight(2);
     fill(155,167,173);
   rect(200, 80, areaWidth, areaHeight);
  
}
   // if bugs goes over 220 , game over =true
  void collide() {   
     //create argument mention x/y   
    if ((Bugs[0].position.y) <= 90) {
      gameOverL = true;
    }
  }
}
  
