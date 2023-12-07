

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
    ellipse(playerP.x,100,40,40);
   rect(playerP.x,135,20,30);
   line(playerP.x-10,120,playerP.x,140);
   line(playerP.x+10,120,playerP.x,140);
   line(playerP.x+4,150,playerP.x+6,170);
    line(playerP.x-4,150,playerP.x-6,170);
    //sword//
   rect(playerP.x,145, 10,18);
   triangle(playerP.x, 180, playerP.x+4, 140, playerP.x-4, 140);
   
   } else if (action == "normal"){// normal position//

  ellipse(playerP.x,100,40,40);
   rect(playerP.x,135,20,30);
   line(playerP.x-10,120,playerP.x,140);
   line(playerP.x+10,120,playerP.x,140);
   line(playerP.x+4,150,playerP.x+6,170);
    line(playerP.x-4,150,playerP.x-6,170);
    //sword//
   rect(playerP.x,137, 10,18);
   triangle(playerP.x, 70, playerP.x+3, 140, playerP.x-3, 140);
}
  
}
//set key spacebar to fight and 
void keyPressed(){
 
  if (key ==' ' && keyPressed == true){
      action = "fight";
  } else {
    action = "normal";
  } 
   }
   
}
// how to make it release ??//

  
 
