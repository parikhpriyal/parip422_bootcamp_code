//global variables
int r=10;
int col=0;

void setup()
{
  size(600,600);
  background(0);
  frameRate(10);
}

void draw()
{
  noFill();
  int weight=int(random(1,1));
  strokeWeight(weight);
  
  if(r<width && r<height)
  {
    stroke(255-col,0,0+col);
    ellipse(width/2,height/2,r+10,r);
    r+=5;
    col+=3;
  }
}
