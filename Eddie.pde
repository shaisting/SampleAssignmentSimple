//1=trump
//2=clinton
//3=minnesota

void convert()
{
  spread=loadStrings("DataVizData.txt");

  for (int i=0; i<spread.length; i++)
  {
    l1=spread[i].split(",");
    state1=l1[0];
    gradRate=Double.parseDouble(l1[1]);
    murderTotal=Double.parseDouble(l1[2]);
    murderRate=Double.parseDouble(l1[3]);

    col1=Integer.parseInt(l1[4]);
    //stats();
    checks();
  }
  
  //for(int i = 0; i<=50; i++)
  //{
  //  allNames[i] = spread[i*4];
  //  allGrades[i] = spread[(i+1)*4];
  //  allMurders[i] = spread[(i+3)*4];
  //}
}

void checks()
{
  Line1 dibujar = new Line1();

  if (allB)
  {
    strokeWeight(2);
    if (col1 == 1)
    {
      stroke(255, 0, 0);
    }
    if (col1 == 2)
    {
      stroke(0, 0, 255);
    }
    if (col1 == 3)
    {
      stroke(170, 0, 255);
    }
    if (col1 == 4)
    {
      stroke(0, 0, 0);
    }
    line(dibujar.getX(), dibujar.getY1(), dibujar.getX(), dibujar.getY2());
    stroke(0, 0, 0);
    line((width/2.4)+1,(height/1.052631579),(width/2.4)+(width/48),(height/1.052631579)+(width/48));
    line((width/2.4)+1,(height/1.052631579)+(width/48),(width/2.4)+(width/48),(height/1.052631579));
  }

  if (trumpB)
  {
    strokeWeight(2);
    if (col1 == 1)
    {
      stroke(255, 0, 0);
      line(dibujar.getX(), dibujar.getY1(), dibujar.getX(), dibujar.getY2());
    }

    if (col1 == 4)
    {
      stroke(0, 0, 0);
      line(dibujar.getX(), dibujar.getY1(), dibujar.getX(), dibujar.getY2());
    }
    stroke(0, 0, 0);
    line((width/2.068965517)+1, (height/1.052631579), (width/2.068965517)+(width/48), (height/1.052631579)+(width/48));
    line((width/2.068965517)+1, (height/1.052631579)+(width/48), (width/2.068965517)+(width/48),(height/1.052631579));
  }

  if (clintonB)
  {
    strokeWeight(2);
    if (col1 == 2)
    {
      stroke(0, 0, 255);
      line(dibujar.getX(), dibujar.getY1(), dibujar.getX(), dibujar.getY2());
    }
    if (col1 == 3)
    {
      stroke(170, 0, 255);
      line(dibujar.getX(), dibujar.getY1(), dibujar.getX(), dibujar.getY2());
    }
    stroke(0, 0, 0);
    line((width/1.481481481)+1, (height/1.052631579), (width/1.481481481)+(width/48), (height/1.052631579)+(width/48));
    line((width/1.481481481)+1, (height/1.052631579)+(width/48), (width/1.481481481)+(width/48),(height/1.052631579));
  }

  if (mnB)
  {
    strokeWeight(2);
    if (col1 == 3)
    {
      stroke(170, 0, 255);
      line(dibujar.getX(), dibujar.getY1(), dibujar.getX(), dibujar.getY2());
    }
    stroke(0, 0, 0);
    line((width/1.153846154)+1, (height/1.052631579), (width/1.153846154)+(width/48), (height/1.052631579)+(width/48));
    line((width/1.153846154)+1, (height/1.052631579)+(width/48), (width/1.153846154)+(width/48),(height/1.052631579));    
  }
  
}