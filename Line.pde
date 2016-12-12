class Line1 {
  
  Line1()
  {
    //len=(0,((height/2)-(gradRate*(height/3))),0,((height/2)-(gradRate*(height/3))));
  }

  int getX()
  {
    double hLineLength = ((width/1.052631579)-(width/20));
    int x = (int)((hLineLength*murderRate)/15.1);
    int i = 0;
    //while (i<=50)
    //{
    //  xCoords[i] = x;
    //}
    //i++;
    return x;
  }

  int getY1()
  {
    int y1 = (int)((height/2)-(gradRate*(3)));
    return y1;
  }

  int getY2()
  {
    int y2 = (int)((height/2)+(gradRate*(3)));
    return y2;
  }
}