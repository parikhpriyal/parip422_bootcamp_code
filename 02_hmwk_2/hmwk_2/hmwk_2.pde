//global variables
int x=5;
int y=5;
//properties of moving circle
int speed=3;
int ellSize=20;
//state variable
int state=0;

void setup()
{
  size(600,400);
  background(255);
  noLoop();
}

void draw()
{
  fill(0,255,0);
  ellipse(x,y,ellSize,ellSize);
  if (state==0)
  {
    y=y+speed;
    //nested if
    if(y>height)
    {
      y=height-ellSize;
      state=1;
    }
  }
  else if(state==1)
  {
    x=x+speed;
    if(x>width)
    {
      x=width-ellSize;
      state=2;
    }
  }
  else if(state==2)
  {
    y=y-speed;
    if(y<0)
    {
      y=ellSize;
      state=3;
    }
  }
  else if(state==3)
  {
    x=x-speed;
    if(x<ellSize)
    {
      x=ellSize;
      state=4;
    }
  }
  else if(state==4)
  {
    y=y+speed;
    if(y>(height-ellSize))
    {
      y=(height-ellSize)-ellSize;
      state=0;
    }
  }
}

void mousePressed()
{
  loop();
}

void mouseReleased()
{
  noLoop();
}

