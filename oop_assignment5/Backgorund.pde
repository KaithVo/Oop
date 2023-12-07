//
//
class Background{
 
  void display (){
  
   background(83,82,103);
   fill(213,217,229);
   noStroke();
    //Character//
   ellipse(225,190,110,95);
   quad(225,230,235,230,245,250,230,250);
   quad(245,250,230,250, 210, 280,280,280);
   quad(210, 280,280,280, 315,390,190,390);
   //table
   fill(31,42,57);
   quad(0,310,400,370,400,400,0,400);
   //Light
   fill(206,201,139,50);
   if (millis()/80%6<2 && frameCount%2<1) // Flickering light from the screen between 2 colors in 
      fill(206,201,139,20);
   quad(30,190, 500,-200, 400,400,30,285);
   //computer
   fill(36,40,49);
   stroke(0);
   strokeWeight(2);
   quad(30, 190, 175, 205, 175,310,30,285);
   quad(60, 330, 140, 342,140, 370,60, 350);
   quad(80, 240, 100, 245, 100,360,80,355);
   //player area
   fill(155,167,173);
   rect(200,80,380,150);
   
   
   
  }
  
}
