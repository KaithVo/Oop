
Background background = new Background ();
Player player;

PVector playerP =new PVector();
//boolean if the "stress" go over line 5 times == lose
boolean gameOverL; //automatic set to false even if we don't set it
float speed;
//keypress A& D to go left and right

void setup(){
  size(400,400);
  
  rectMode(CENTER);
  noCursor();
  player = new Player(width/2, 120);
}
void draw(){
  background.display();
  //player display
 
  player.move();
  player.keyPressed();
  player.playerConstrain();
  
}
