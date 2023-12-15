
int mood=0;
// using the amountObject would be easier if you want to change the number of object showing on the screen
Object [] amountObjects = new Object [3];
ArrayList<Bubble> bubbles; // Declare an ArrayList to hold Bubble objects
Area area = new Area();
Background background ;
Player player;

PVector playerP =new PVector();
//boolean if the "stress" go over line 5 times == lose
boolean gameOverL; //automatic set to false even if we don't set it


// #4 setting up the canvas

void setup(){
  size(400,500);
  rectMode(CENTER);
  noCursor();
  
   background = new Background(); // Initialize the Background object
   bubbles = new ArrayList<Bubble>();
   
    for (int i = 0; i < 20; i++) {
    int x = (int) random(width);
    int y = (int) random(height);
    bubbles.add(new Bubble(x, y));
  }
  
  // declare the object class each time
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
   
}
 if ((key=='r'||key=='R')|| gameOverL==true ) {  
    setup();
  }
 
  if (key == ' ') {
    mood = (mood + 1) % 3; // Change the mood variable cyclically between 0, 1, and 2
  }

}
