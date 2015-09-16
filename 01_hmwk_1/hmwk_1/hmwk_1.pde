

void setup()
{
  size(400,400);
}

void draw()
{
  background(0,206,209);
  fill(0);
  noStroke();
  //mickey's face - black portion
  ellipse(width/2,height/2,200,200);
  //mickey's ears
  ellipse((width/2)-100,(height/2)-90,90,90);
  ellipse((width/2)+100,(height/2)-90,90,90);
  noFill();
  //mickey's face
  fill(255,218,185);
  ellipse((width/2)-30,(height/2)-10,80,140);
  ellipse((width/2)+30,(height/2)-10,80,140);
  ellipse((width/2),(height/2)+60,220,80);
  ellipse((width/2),(height/2)+70,130,80);
  //mickey's eyes - white portion
  fill(255);
  ellipse((width/2)-25,(height/2)-20,50,90);
  ellipse((width/2)+25,(height/2)-20,50,90);
  //mickey's eyeballs
  fill(0);
  ellipse((width/2)-20,(height/2)-10,30,50);
  ellipse((width/2)+30,(height/2)-10,30,50);
  fill(255);
  ellipse((width/2)-10,(height/2)-10,10,20);
  ellipse((width/2)+40,(height/2)-10,10,20);
  //mickey's mouth
  fill(0);
  ellipse((width/2),(height/2)+50,150,60);
  ellipse((width/2)-10,(height/2)+70,70,60);
  //mickey's tongue
  fill(255,0,0);
  ellipse((width/2)-20,(height/2)+91,25,15);
  ellipse((width/2)-9,(height/2)+93,25,15);
  //mickey's nose
  fill(255,218,185);
  ellipse((width/2),(height/2)+48,160,50);
  fill(0);
  ellipse((width/2),(height/2)+40,70,30);
  fill(255);
  ellipse((width/2)-8,(height/2)+35,20,10);
}
