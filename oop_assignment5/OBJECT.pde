 //set up score variables
  int scoreCount;

class Object{
  
  //set up pixie size variables for easy changing
  int size = 35;
 
  //set up position and velocity vectors
  PVector position = new PVector();
  PVector velocity= new PVector();
 
  Object () {
    //calls reset which generates pixies
    move();
  }
  // Object coming from the bottom and going straight random x// 
  void update() {
    position.y-= velocity.y;
    if (position.y < -size || position.x < - size || position.x > width + size) {
   move();
    }
  }
 
//draw the object
  void display() {

    stroke(255);
    fill (0);
    ellipse(position.x, position.y, 20, 40);
    ellipse(position.x, position.y, 40, 20);

  }
  
  void move(){
    position = new PVector(random(50, 350), 610);
    velocity = new PVector();
    velocity = PVector.random2D();
    velocity.mult(random(3.2, 3.5)); 
  }
 
 void keyPressed(){
  if (key==' ') {
   for (int obj = 0; obj< amountObjects.length; obj++){
     if ((playerP.y + 40 > amountObjects[obj].position.y) && (playerP.y-40<amountObjects[obj].position.x) && 
      playerP.x + 20 > amountObjects[obj].position.x && playerP.x-20 < amountObjects[obj].position.x){
        move();
   
 
   }
   }
}
}
 void scoreDisplay() {
    fill (0);
    //alligns text to the left along given coordinates
    textAlign (LEFT);
    textSize (25);
    text ("Hit", 328, 30);
    text (scoreCount, 360, 63);

 }
}
