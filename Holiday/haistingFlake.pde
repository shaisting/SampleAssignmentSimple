class HaistingFlake implements Flake
{
  PVector velocity;
  PVector location;
  PVector acceleration;
  PVector gravity;
  float lifespan;
  
  HaistingFlake()
  {
    location = new PVector(random(-3,800), random(-3,20));
    velocity = new PVector(random(-.001,.001),1);
    acceleration = new PVector(0,-0.01);
    lifespan = 255;
  }
  
  HaistingFlake(int x, int y)
  {
    
  }
  
  public void snow()
  {
    location.y = random(-2,10);
    location.x = random(width);
    lifespan = 255;
  }
  
  public void display()
  {
    lifespan -= .5;
    noStroke();
    smooth();
    fill(255,255,255,lifespan);
    if(location.y > height || location.y < -30)
    {
      location.y = random(0, 40);
    }
    if(location.x > width || location.x < -30)
    {
      location.x = random(0, width);
    }
    ellipse(location.x,location.y,10,10);
  }
  
  public boolean isDead()
  {
    if(lifespan < 0)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  public void addPhysics()
  {
    gravity = new PVector(random(0,2), random(0,20));
    //somethingSpecial();
    acceleration = PVector.random2D();
    velocity.add(acceleration);
    location.add(velocity);
    location.add(gravity);
  }
  
  public void somethingSpecial()
  {
    acceleration = new PVector(-1,-1);
    gravity = new PVector(random(0,-2), random(0,-20));
  }
  
}