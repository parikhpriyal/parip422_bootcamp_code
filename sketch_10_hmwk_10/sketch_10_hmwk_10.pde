//global variables
int numElements = 100;
//arrays
Bubble[] bubbles = new Bubble [numElements];

void setup()
{
  size(600,600);
  background(255);
  for(int i=0; i<numElements ; i++)
  {
    bubbles[i] = new Bubble (random (0,600), random(0,600), random (1,100), random(255), random(255), random(255), random(0,50)); 
  }
}

void draw()
{
  for(int i=0; i<numElements ; i++)
  {
    bubbles[i].display();
  }
}
