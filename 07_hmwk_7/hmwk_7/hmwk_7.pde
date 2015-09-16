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
  int weight=int(random(1,3));
  strokeWeight(weight);
  if(r<width && r<height)
  {
    for(int i=1; i<width && i<height; i++)
    {
      stroke(255-col,0+col/2,0+col);
      rotate(30);
      ellipse(width/i,height/i,r+10,r+3*i);
      r+=5;
      col+=3;
    }
  }
}
