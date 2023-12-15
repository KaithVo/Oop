

Object [] amountObjects = new Object [3];
ArrayList<Bubble> bubbles; // Declare an ArrayList to hold Bubble objects
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
   bubbles = new ArrayList<Bubble>();
   
    for (int i = 0; i < 20; i++) {
    int x = (int) random(width);
    int y = (int) random(height);
    bubbles.add(new Bubble(x, y));
  }
  
  for ( int obj = 0; obj< amountObjects.length; obj ++){
  amountObjects[obj] = new Object ();
}
  player = new Player(width/2, 120);
}


void draw(){

   if(!gameOverL){  
 
  background(83,82,103);
   fill(213,217,229);
 
  background.moodSetting();
  background.display();
  area.draw();
  //player display
  player.move();
  player.keyPressed();
  player.playerConstrain();
      for (Bubble bubble : bubbles) {
    bubble.display();
    bubble.move();
    bubble.checkEdges();
  }
  area.collide();
  
  for (int obj = 0; obj< amountObjects.length; obj +=1) { 

    amountObjects[obj].update();
    amountObjects[obj].display();
    amountObjects[obj].scoreDisplay();
   }
 } else {

 area.collide();
 gameOverL();
  }
}

  void gameOverL(){
 fill(250,58,64);

    for (int obj = 0; obj< amountObjects.length; obj ++) {
    amountObjects[obj].scoreDisplay();
}
    textAlign(CENTER);
    textSize(50);
    text ("ARGGGGGGGGSSS", width/2, height/2);
    text ("GAME OVER", width/2, height/2 + 60);
    
    
}

void keyPressed(){
  if (key==' ') {
    //spacebar also make character chance the mood
     background.moodSetting(); 
   for (int obj = 0; obj< amountObjects.length; obj++){
     if ((playerP.y +40 > amountObjects[obj].position.y) && 
         (playerP.y -40> amountObjects[obj].position.y) && 
          playerP.x +40 > amountObjects[obj].position.x && 
          playerP.x -40 > amountObjects[obj].position.x){
            scoreCount =+1;
        amountObjects[obj].move();
   }
  }
}
 if ((key=='r'||key=='R' && gameOverL == true)) {
    draw();
  }
  
  if (key == ' '){
  
  }
}
