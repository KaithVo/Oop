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
    ellipse(mouseX,200,40,40);
   rect(mouseX,235,20,30);
   line(mouseX-10,220,mouseX,240);
   line(mouseX+10,220,mouseX,240);
   line(mouseX+4,250,mouseX+6,270);
    line(mouseX-4,250,mouseX-6,270);
    //sword//
   rect(mouseX,245, 10,18);
   triangle(mouseX, 280, mouseX+4, 240, mouseX-4, 240);
   
   } else if (action == "normal"){// normal position//

  ellipse(mouseX,200,40,40);
   rect(mouseX,235,20,30);
   line(mouseX-10,220,mouseX,240);
   line(mouseX+10,220,mouseX,240);
   line(mouseX+4,250,mouseX+6,270);
    line(mouseX-4,250,mouseX-6,270);
    //sword//
   rect(mouseX,237, 10,18);
   triangle(mouseX, 170, mouseX+3, 240, mouseX-3, 240);
}
  
}

void keyPressed(){
 
  if (keyPressed == true){
    action = "fight";
  } else {
    action = "normal";
  }
  
}

}
