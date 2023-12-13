 //set up score variables
  int scoreCount;

class Bug{
  
  //set up pixie size variables for easy changing
  int size = 35;
 
  //set up position and velocity vectors
  PVector position;
  PVector velocity;
 
  Bug () {
    //calls reset which generates pixies
    reset();
  }
  // Bugs coming from the bottom// 
  void update() {
    position.add(velocity);
    if (position.y < -size || position.x < - size || position.x > width + size) {
      reset();
    }
  }
 
  //pixie body
  void display() {
    //body
    stroke(1,32,85);
    fill (88,63,52);
    ellipse(position.x, position.y, 30, 40);
    rect(position.x, position.y, 30, 3);
  }
 
  //nuew patch of bugs coming//
  void reset()
  {
    //starts at the bottom of the screen, offscreen
    position = new PVector(random(50, 350), 650);
    //angle at which the pixies travel, upwards
    velocity = PVector.fromAngle(radians(random(-135, -45)));
    //velocity 
    velocity.mult(random(0, 3.7));
 }

 void kill() {
   if (keyPressed && dist(mouseX, 245, position.x, position.y)<size)
  {
   reset();
     scoreDisplay();
      // adds one to current score
   scoreCount += 1;
   
  }
}
 void scoreDisplay() {
    fill (0);
    //alligns text to the left along given coordinates
    textAlign (LEFT);
    textSize (25);
    //prints number of pixies collected
    text ("Bugs", 328, 30);
    text (scoreCount, 360, 63);

 }
}
