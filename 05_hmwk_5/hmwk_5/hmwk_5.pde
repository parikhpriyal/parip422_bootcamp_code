//global variables
int ang=10;

void setup()
{
  size(600,600);
  frameRate(4);
}

void draw()
{
  background(0);
  noStroke();
  translate(width/2,height/2);
  for(int i=0; i<width && i<height; i++)
  {
     rotate(ang);
     rect(0,0,ang+i,ang+2*i);
     ang+=5;
     fill(i+ang*i);
     stroke(random(i+ang));
  }
}
