class Triangles
{
  //variables
  float x1, y1, x2, y2, x3, y3, r, g, b;
  //constructor
  Triangles(float x1_, float y1_, float x2_, float y2_, float x3_, float y3_)
  {
    x1 = x1_;
    y1 = y1_;
    x2 = x2_;
    y2 = y2_;
    x3 = x3_;
    y3 = y3_;
  }
  //method
  //void update()
  //{
  //  x1--;
  //  x2++;
  //  y2--;
  //  x3++;
  //  y3++;
  //}
  void display()
  {
    pushMatrix();
    fill(200,255,255,100);
    translate(x1,y1);
    triangle(x1, y1, x2, y2, x3, y3);
    popMatrix();
  }
}