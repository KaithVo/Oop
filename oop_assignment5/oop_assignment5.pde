Bug [] Bugs = new Bug [1];

Area area = new Area();
Background background = new Background ();
Player player;

PVector playerP =new PVector();
//boolean if the "stress" go over line 5 times == lose
boolean gameOverL; //automatic set to false even if we don't set it

//keypress A& D to go left and right

void setup(){
  size(400,500);
  
  rectMode(CENTER);
  noCursor();
   Bugs[0] = new Bug();
    player = new Player(width/2, 120);
}
void draw(){
   if (!gameOverL) {
  background.display();
  area.draw();
  
  //player display
  player.move();
  player.keyPressed();
  player.playerConstrain();
 
  area.collide();
  
  for (int i = 0; i<Bugs.length; i+=1) {  
   Bugs[i].update();
    Bugs[i].display();
    Bugs[i].kill();
    Bugs[i].scoreDisplay();
  }
 } else {
    //insert over scene
     area.collide();
     gameOverL();
  }
}
  void gameOverL(){
     fill(250,58,64);
    Bugs[0].scoreDisplay();
    textAlign(CENTER);
    textSize(50);
    text ("BUGSSSSSS", width/2, height/2);
    text ("GAME OVER", width/2, height/2 + 60);
}

 
