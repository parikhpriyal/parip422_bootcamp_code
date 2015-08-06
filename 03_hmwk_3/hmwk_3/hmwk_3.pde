//reference to code from https://processing.org/examples/sequential.html

//global variables
int numFrames=5;
int currentFrame=0;
//introducing all 5 images together instead of individually calling 5
PImage[] img=new PImage[numFrames];

void setup()
{
  size(700,400);
  //higher the framerate faster the movement
  frameRate(5);
  //load 5 images 
  //count is always numFrames-1
  img[0]=loadImage("move1.jpg");
  img[1]=loadImage("move2.jpg");
  img[2]=loadImage("move3.jpg");
  img[3]=loadImage("move4.jpg");
  img[4]=loadImage("move5.jpg");
}

void draw()
{
  background(255);
  currentFrame=currentFrame+1;
  for(int i=-700;i<height;i+=img[0].height)
  {
    //"%"maintains flow 
    image(img[(currentFrame)%numFrames],width/4,height/8);
    image(img[(currentFrame)%numFrames],width/4,height/8);
  }
}
