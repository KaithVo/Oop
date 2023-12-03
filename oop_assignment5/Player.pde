//set keypressed A&W for left and right 
String action; // action when mouseclicked, player waves their sword//

class Player{
 
 void move(){
    stroke(0);
   fill(255);  
   strokeWeight(2);
   rectMode(CENTER);
   
   //////////////////////////
   //REMEMBER TO CHANGE THE MOUSEX AND Y TO MOUSEPRESS A & W///
   ////////////////////
   if (action == "fight"){// fight action
    ellipse(mouseX,100,40,40);
   rect(mouseX,135,20,30);
   line(mouseX-10,120,mouseX,140);
   line(mouseX+10,120,mouseX,140);
   line(mouseX+4,150,mouseX+6,170);
    line(mouseX-4,150,mouseX-6,170);
    //sword//
   rect(mouseX,145, 10,18);
   triangle(mouseX, 180, mouseX+4, 140, mouseX-4, 140);
   
   } else if (action == "normal"){// normal position//

  ellipse(mouseX,100,40,40);
   rect(mouseX,135,20,30);
   line(mouseX-10,120,mouseX,140);
   line(mouseX+10,120,mouseX,140);
   line(mouseX+4,150,mouseX+6,170);
    line(mouseX-4,150,mouseX-6,170);
    //sword//
   rect(mouseX,137, 10,18);
   triangle(mouseX, 70, mouseX+3, 140, mouseX-3, 140);
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

  
 
