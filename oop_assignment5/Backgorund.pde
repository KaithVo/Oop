//
//
class Background{
 
  void display (){
  
   background(83,82,103);
   fill(213,217,229);
   noStroke();
    //Character//
   ellipse(225,290,110,95);
   quad(225,330,235,330,245,350,230,350);
   quad(245,350,230,350, 210, 380,280,380);
   quad(210, 380,280, 380, 315,490,190,490);
   //table
   fill(31,42,57);
   quad(0,410,400,470,400,500,0,500);
   //Light
   fill(206,201,139,50);
   if (millis()/80%6<2 && frameCount%2<1) // Flickering light from the screen between 2 colors in 
      fill(206,201,139,20);
   quad(30,290, 500,-200, 400,500,30,385);
   //computer
   fill(36,40,49);
   stroke(0);
   strokeWeight(2);
   quad(30, 290, 175, 305, 175, 410,30, 385);
   quad(60, 430, 140, 442, 140, 470,60, 450);
   quad(80, 340, 100, 345, 100, 460,80, 455);
   //player area

  }
  
}
