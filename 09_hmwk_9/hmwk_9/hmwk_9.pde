int number=800;

float[] radiusX=new float[number];
float[] radiusY=new float[number];

void setup()
{
  size(800,800);
  for (int i=0; i<number; i++)
  {
    radiusX[i]=random(0,800);
    radiusY[i]=random(0,800);
  }
}

void draw()
{
  background(255);
  for (int i=1; i<number; i++)
  {
    
      fill(0+i, 255-i);
      ellipse( width/2, height/2, radiusX[i/8], radiusY[i/8]);
    
  }
  
}
