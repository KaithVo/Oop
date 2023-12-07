

String action; // action when mouseclicked, player waves their sword//


class Player{
  
 //global variant
  float speed;
 
  PVector playerP =new PVector();

  Player(float playerPX, float playerPY){
   playerP.x = playerPX;
   playerP.y = playerPY;
  }
  
 void move(){
    stroke(0);
   fill(255);  
   strokeWeight(2);
   rectMode(CENTER);
   
   //////////////////////////
   //REMEMBER TO CHANGE THE MOUSEX AND Y TO MOUSEPRESS A & W///
   ////////////////////
   if (action == "fight"){// fight action
    ellipse(playerP.x,80,40,40);
   rect(playerP.x,115,20,30);
   line(playerP.x-10,100,playerP.x,120);
   line(playerP.x+10,100,playerP.x,120);
   line(playerP.x+4,130,playerP.x+6,150);
    line(playerP.x-4,130,playerP.x-6,150);
    //sword//
   rect(playerP.x,125, 10,18);
   triangle(playerP.x, 160, playerP.x+4, 120, playerP.x-4, 120);
   
   } else if (action == "normal"){// normal position//

  ellipse(playerP.x,80,40,40);
   rect(playerP.x,115,20,30);
   line(playerP.x-10,100,playerP.x,120);
   line(playerP.x+10,100,playerP.x,120);
   line(playerP.x+4,130,playerP.x+6,150);
    line(playerP.x-4,130,playerP.x-6,150);
    //sword//
   rect(playerP.x,117, 10,18);
   triangle(playerP.x, 50, playerP.x+3, 120, playerP.x-3, 120);
}
  
}


//set key spacebar to fight and 
void keyPressed(){
 
  if (key ==' ' && keyPressed == true){
      action = "fight";
  } else {
    action = "normal";
  } 
  
     if (keyPressed) {
      //left
      if (key=='A'||key=='a') {
        playerP.x=playerP.x-speed;
      }
      //right
      if (key=='D'||key=='d') {
        playerP.x=playerP.x+speed;
      }
      speed = 7;
    }
   }
   //limit the area that player can move
void playerConstrain(){
  playerP.x = constrain( playerP.x, 35,365);
}
   
}


  
 
