String action; 

// action when mouseclicked, player waves their sword//


class Player {
  
  float speed;
  PVector playerP =new PVector();

  Player(float playerPX, float playerPY) {
    playerP.x = playerPX;
    playerP.y = playerPY;
  }
 void move() {
  stroke(0);
  fill(255);
  strokeWeight(2);
  rectMode(CENTER);

  if (action == "fight") {
    ellipse(playerP.x, 80, 40, 40);
    rect(playerP.x, 115, 20, 30);
    line(playerP.x-10, 100, playerP.x, 120);
    line(playerP.x+10, 100, playerP.x, 120);
    line(playerP.x+4, 130, playerP.x+6, 150);
    line(playerP.x-4, 130, playerP.x-6, 150);
    //sword//
    rect(playerP.x, 125, 10, 18);
    triangle(playerP.x, 160, playerP.x+4, 120, playerP.x-4, 120);
  } else if (action == "normal") {
    ellipse(playerP.x, 80, 40, 40);
    rect(playerP.x, 115, 20, 30);
    line(playerP.x-10, 100, playerP.x, 120);
    line(playerP.x+10, 100, playerP.x, 120);
    line(playerP.x+4, 130, playerP.x+6, 150);
    line(playerP.x-4, 130, playerP.x-6, 150);
    //sword//
    rect(playerP.x, 117, 10, 18);
    triangle(playerP.x, 50, playerP.x+3, 120, playerP.x-3, 120);
  }
}

void keyPressed() {
 
  if (key ==' ' && keyPressed == true) {
    action = "fight";
      for (int obj = 0; obj< amountObjects.length; obj++) {
      float distance = dist(playerP.x, playerP.y, amountObjects[obj].position.x, amountObjects[obj].position.y);
      if (distance < 40) {
        // If the player is close enough to the object, perform the action 
        amountObjects[obj].move();
        scoreCount+=1;
       }
      }
  } else {
    action = "normal";
  }
//set key A for going left
//set D to going Right
//#7 keypressed
  if (keyPressed) {
    if (key=='A'||key=='a') {
      playerP.x=playerP.x-speed;
    }
    if (key=='D'||key=='d') {
      playerP.x=playerP.x+speed;
    }
    speed = 7;
  }
  }
  
//player oonly goes between 35 and 350 on the width
void playerConstrain() {
  playerP.x = constrain( playerP.x, 35, 365);
}
}
