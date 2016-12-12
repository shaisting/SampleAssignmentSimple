void checkBoxes(int x, int y)
{
  //box coordinates
  int boxesY = (int)(height/1.052631579);
  int allX = (int)(width/2.4);
  int trumpX = (int)(width/2.068965517);
  int clintonX = (int)(width/1.481481481);
  int mnX = (int)(width/1.153846154);
  int s = (int)(width/48);

  //MODEL FOR X MARKS
  //stroke(0, 0, 0);
  //line(clintonX+1, boxesY, clintonX+s, boxesY+s);
  //line(clintonX+1, boxesY+s, clintonX+s, boxesY);

  //clicked
  if ((x>=allX) && x<=(allX+s) && (y>=boxesY) && (y<=boxesY+s))
  {
    allB = !allB;
  }

  if ((x>=trumpX) && x<=(trumpX+s) && (y>=boxesY) && (y<=boxesY+s))
  {
    trumpB = !trumpB;
  } 

  if ((x>=clintonX) && x<=(clintonX+s) && (y>=boxesY) && (y<=boxesY+s))
  {
    clintonB = !clintonB;
  }

  if ((x>=mnX) && x<=(mnX+s) && (y>=boxesY) && (y<=boxesY+s))
  {
    mnB = !mnB;
  }
  //?
  if(allB)
  {
    trumpB = true;
    clintonB = true;
    mnB = true;
  }
}

//void info()
//{
//  Line1 display = new Line1();
  
//  for(int i = 0; i<=50; i++)
//  if(mouseX>=(xCoords[i]-1) && mouseX<= (xCoords[i]+3))
//  {
//    fill(0,0,0);
//    text(allNames[i],800,25);
//    text(allGrades[i]+"% of students graduate high school",800,50);
//    text(allMurders[i]+" murders per capita",800,75);  
//  }
//}