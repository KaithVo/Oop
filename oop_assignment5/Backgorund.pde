//
//
int mood=0;

class Background{
 void moodSetting(){
   
 switch(mood){
   
   
  //Stress mode 2
 case 0:
     for (int i = 0; i < 5; i++) {
        circle(((250) + (i * 13)), 300 - 40 * i, 15 * sin((frameCount / 20) - (i / 2)) + 20);
        circle(((200) + (i * 2)), 280 - 20 * i, 20 * sin((frameCount / 20) - (i / 2)) + 20);
    }
          fill(213,217,229);
   noStroke();
    ellipse(200,325,110,95);
   quad(225,330,235,330,245,350,230,350);
   quad(245,350,230,350, 210, 380,290,380);
   quad(210, 380,290, 380, 325,490,190,490);
   fill(0);
   rect(195,335,13,3);
   rect(195,338,13,2);
   rect(175,350,30,10);
   stroke(0);
   line (185, 320, 190,325); 
break;

//Stress mode 3
case 1:
  for (int i = 0; i < 5; i++) {
        circle(((250) + (i * 13)), 300 - 40 * i, 15 * sin((frameCount / 20) - (i / 2)) + 20);
        circle(((200) + (i * 2)), 280 - 20 * i, 20 * sin((frameCount / 24) - i) + 20);
        circle(((150) + (i * (-5))), 280 - 20 * i, 15 * sin((frameCount / 20) - (i / 2)) + 15);
    }
     fill(213,217,229);
   noStroke();
   ellipse(200,345,110,95);
   quad(225,330,235,330,245,350,230,350);
   quad(245,350,230,350, 250, 380,290,360);
   quad(210, 380,290, 360, 325,490,190,490);
   
   fill(0);
   rect(175,355,60,3);
   rect(175,358,60,2);

   stroke(0);
   line (175, 350, 190,325);
   line (175, 360, 190,375);
   
   fill(75, 50);
break;

 default:
     for (int i = 0; i < 3; i++) {
        circle(((250) + (i * 13)), 300 - 40 * i, 15 * sin((frameCount / 20) - (i / 2)) + 20);
    }
     fill(213,217,229);
   noStroke();
       ellipse(225,290,110,95);
   quad(225,330,235,330,245,350,230,350);
   quad(245,350,230,350, 210, 380,280,380);
   quad(210, 380,280, 380, 315,490,190,490);
  break;
   }
  }
  
  void display (){ 
  
   noStroke();
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


  }
 
  void mousePressed(){
   
      mood = (mood + 1) % 3;
    
  }
}
