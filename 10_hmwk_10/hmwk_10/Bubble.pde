//define bubble class

class Bubble
{
  float x, y, rad, r, g, b, speed;
  Bubble(float x_, float y_, float rad_, float r_, float g_, float b_, float speed_)
  {
    x=x_;
    y=y_;
    rad=rad_;
    r=r_;
    g=g_;
    b=b_;
    speed=speed_;
  }
  void display()
  {
      stroke(0);
      strokeWeight(2);
      fill(r, g, b);
      for(int i=1; i<width && i<height; i++)
      {
        ellipse(x, y, rad/i, rad);
      }
      x=x+speed;
      y=y+speed;
  }  
}
