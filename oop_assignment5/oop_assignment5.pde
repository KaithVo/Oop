Background background = new Background ();
//boolean if the "stress" go over line 5 times == lose
boolean gameOverL; //automatic set to false even if we don't set it

//keypress A& D to go left and right

void setup(){
  size(400,400);
  background(83,82,103);
  rectMode(CENTER);
  noCursor();
}
void draw(){
  background.display();
  
}
