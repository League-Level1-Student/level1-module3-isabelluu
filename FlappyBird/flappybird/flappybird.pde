PImage background;
PImage bird;
int gravity = 1;
int gravity1 = 1;
int rectXVelocity = 2;
int birdYVelocity = 10;
int birdY = 250;
int birdX = 100;
int rectX = 500;
int count = 10;
int upperPipeHeight = (int) random(100, 400);
int lowerPipeHeight = upperPipeHeight + 125;

void setup()
{
  size(500, 800);
  background = loadImage("flappyBackground.jpg");
  background.resize(500,800);
  bird = loadImage("bird.png");
  bird.resize(50,50);
  
}


void draw()
{
  background(background);
 
 image(bird, birdX, birdY);
 fill(#4EFF43);
 stroke(#4EFF43);
  
  
  for(int i = 0; i < 10; i++)
  {
    teleportPipes();
    
    int lowerY = 800 - lowerPipeHeight;
    rect(rectX, 0, 50, upperPipeHeight);
    rect(rectX, lowerPipeHeight, 50, lowerY);
  
  }
  rectX += gravity1;
  rectX -= rectXVelocity;


  birdY += gravity;
  if(mousePressed == true)
  {
    birdY -= birdYVelocity;
  }


}

void teleportPipes()
{
  if(rectX < 0)
  {
    rectX = 500;
    
     upperPipeHeight = (int) random(100, 400);
     lowerPipeHeight = upperPipeHeight + 125;
  }
}