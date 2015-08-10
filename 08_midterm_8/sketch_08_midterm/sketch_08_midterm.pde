//https://www.processing.org/discourse/beta/num_1271776111.html
//http://labs.worgens.com/2010/11/processing-color-tracking/
//http://www.magicandlove.com/blog/2014/07/29/processing-test-with-the-pgraphics/

//acces video library
import processing.video.*;

//global variables
PGraphics pg;
Capture video;
color trackColor;
int weight=1;



void setup()
{
  size(320, 240);
  colorMode(HSB);
  frameRate(10);
  video=new Capture(this, width, height, 15);
  video.start();
  trackColor=color(255, 255, 255);
  pg=createGraphics(320,240);
  pg.beginDraw();
  pg.background(0);
  pg.smooth();
  pg.noStroke();
  pg.fill(255);
  pg.endDraw();
}

void draw()
{
  if (video.available())
  {
    video.read();
  }
  video.loadPixels();
  //  loadPixels()x;
  background(255);
  pg.beginDraw();
  if(mousePressed)
  {
    pg.rect(mouseX,mouseY,16,16);
  }
  pg.endDraw();
  video.mask(pg);  
  image(video, 0, 0);
  float closestDiff=500;
  int closestX=0;
  int closestY=0;
  for (int i=0; i<video.width; i++)
  {
    for (int j=0; j<video.height; j++)
    {
      int loc= i+j*video.height;
      color currentColor=video.pixels[loc];
      float r1=red(currentColor);
      float r2=red(trackColor);
      float g1=green(currentColor);
      float g2=green(trackColor);
      float b1=blue(currentColor);
      float b2=blue(trackColor);
      float d=dist(r1, g1, b1, r2, g2, b2);
      if (d<closestDiff)
      {
        closestDiff=d;
        closestX=i;
        closestY=j;
      }
    }
  }
  if (closestDiff<10)
  {
    fill(trackColor);
    strokeWeight(weight);
    stroke(0);
    ellipse(mouseX, mouseY, 16, 16);
  }
  updatePixels();
}

void mousePressed()
{
  int loc;
  loc=mouseX+mouseY*video.width;
  trackColor=video.pixels[loc];
  fill(trackColor);
    strokeWeight(weight);
    stroke(0);
}

void mouseClicked()
{
  int c=get(mouseX,mouseY);
  println(green(c));
  println(red(c));
  println(blue(c));
}
