

void setup()
{
  size(400,400);
  background(0);
  colorMode(HSB);
}

void draw()
{
  translate(width/2,height/2);
  noStroke();
  for(int j=3; j<width && j<height; j++)
  { 
    for(int i=1; i<j; i+=5)
    {
      rotate(45);
      fill(255-i,0+i/2,0+i);
      ellipse(i,i,i,i);
      
    }
  }
}
