import java.util.Iterator;

ArrayList <Flake> myList;
int moonDX = 1;
int moondY = 1;

void setup()
{
  size (800, 400);

  myList = new ArrayList<Flake>();

  for (int i = 0; i < 40; i++)
  {
   myList.add(new HaistingFlake());
   myList.add(new HaistingFlake());
  }
}

void draw()
{
  background(10, 10, 40);
  frameRate(9);
  
  stroke(255,255,255);
  text("Press 'M' to let it snow", 650,350);
  noStroke();
  
  //moon
  int moonX = 100;
  fill(255, 236, 172);
  ellipse(moonX, 60, 70, 70);
  fill(10, 10, 40);
  ellipse(moonX-20, 45, 70, 70);
  

  Iterator<Flake> test = myList.iterator();
  while (test.hasNext())
  {
    Flake f = test.next();
    f.display();
    f.addPhysics();
    //f.somethingSpecial();

    if (f.isDead())
    {
      f.snow();
    }
  }
  moonX = moonX + moonDX;
}

void keyPressed()
{
  if (key=='m')
  {
  //  myList = new ArrayList<Flake>();

    for (int i = 0; i < 20; i++)
    {
      myList.add(new HaistingFlake());
      myList.add(new HaistingFlake());
    }
  }
}

interface Flake
{
  void snow(); //how you want flake to move
  void display(); // kind of flake (ellipse?)
  void addPhysics(); //velo, accel, location #PVectors
  void somethingSpecial(); //add something unique
  boolean isDead();
}