PImage background;
PImage frog;
PImage carR;
int carRX = 90;
int carRY = 230;
PImage carL;
int carLX = 600;
int carLY = 470;
int frogX = 370;
int frogY = 560;
int score = 0;

Car car1 = new Car(90,230);
Car car2 = new Car(90,400);
Car car3 = new Car(600,470);
Car car4 = new Car(600, 300);

void setup()
{
  size(800,600);
  background = loadImage("froggerBackground.png");
  background.resize(800,600);
  frog = loadImage("frog.png");
  frog.resize(50,50);
  
  carR = loadImage("carRight.png");
  carR.resize(100,50);
  carL = loadImage("carLeft.png");
  carL.resize(100,50);
  
}

void draw()
{
  background(background);
  image(frog, frogX, frogY);
  /*image(carR, carRX+=3, carRY);
  image(carR, carRX+=2, 400);
  image(carL, carLX-=2, carLY);
  image(carL, carLX--, 300);*/
  
  car1.display();
  car2.display();
  car3.display();
  car4.display();
  
  car1.speed();
  car2.speed();
  car3.speed();
  car4.speed();
  
  car1.intersects(car1);
  
  if(carRX > 800)
    carRX = 0;
    
  if(carLX < 0)
    carLX = 600;
}

void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
                  frogY -= 30;
            }
            else if(keyCode == DOWN)
            {
                  frogY += 30;
            }
            else if(keyCode == RIGHT)
            {
                  frogX += 30;
            }
            else if(keyCode == LEFT)
            {
                  frogX -= 30;
            }
      }
      
      if(frogX >=800)
        frogX -= 50;
        
      if(frogX <= 0)
        frogX += 50;
        
       if(frogY >= 600)
         frogY -= 50;
         
       if(frogY <= 0)
         frogY += 50;
}

class Car
{
  int carX;
  int carY;
  Car(int carX, int carY) 
  {
    this.carX = carX;
    this.carY = carY;
  
  }
  
  int getX()
  {
    return(this.carX);
  }
  
  int getY()
  {
    return(this.carY);
  }
  
  void display() 
  {
    if(getY() == 230 || getY() == 400)
      image(carR, carX +=9, getY());
      
    if(getY() == 470 || getY() == 300)
      image(carL, carX-=2, getY());
   }
   
   void speed()
   {
     if(carX>= 800)
     carX = 10;
     
     
     if(carX < -5)
     carX = 790;
     
   }
   
   
boolean intersects(Car car) 
{
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+100))
      {
             return true;
      }
      else 
      {
             return false;
      }
}



  /* if(carLX == frogX && carLY == frogY)
  {
    score -= 1;
    frogY = 560;
    frogX = 370;
  }
  
   if(carRX == frogX && carRY == frogY)
  {
    score -= 1;
    frogY = 560;
    frogX = 370;
  }*/
    


}
