//the code seems to be broken but I am not able to debug it

ArrayList <Triangles> triangles;

void setup()
{
  size (600,600);
  background(10);
  triangles = new ArrayList <Triangles> ();
}

void draw()
{
  triangles.add (new Triangles(new float(width/2-10, height/2, width/2+10, height/2-10, width/2+10, height/2+10)));
  for(int i = 0; i < triangles.size(); i++)
  {
    Triangles tempTri = triangles.get(i);
    tempTri.update();
    tempTri.display();
  }
}