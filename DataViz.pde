import java.util.Scanner;
import java.util.Arrays;

String state1;
String[] l1;
int col1;
double gradRate;
double murderTotal;
double murderRate;
String [] spread;
boolean allB = false;
boolean trumpB = false;
boolean clintonB = false;
boolean mnB = true;
//String[] allNames = new String[50];
//String[]  allGrades = new String[50];
//String[] allMurders = new String[50];
//int[] xCoords = new int[50];

void setup()
{
  size (1200, 600);
}

void draw()
{
  //horizontal line
  background(255, 250, 245); 
  strokeWeight(3);
  stroke(0, 0, 0);
  line(width/20, height/2, width/1.052631579, height/2);

  //check boxes
  fill(255, 255, 255);
  //all
  rect((width/2.4), (height/1.052631579), (width/48), (height/24));
  //trump
  rect((width/2.068965517), (height/1.052631579), (width/48), (height/24));
  //clinton
  rect((width/1.481481481), (height/1.052631579), (width/48), (height/24));
  //mn
  rect((width/1.153846154), (height/1.052631579), (width/48), (height/24));

  //text 
  textSize(17);
  fill(0, 0, 0);
  text("All", ((width/2.4)+(width/40)), ((height/1.052631579)+(height/30)));
  fill(255, 0, 0);
  text("Trump Voting States", ((width/2.068965517)+(width/40)), ((height/1.052631579)+(height/30)));
  fill(0, 0, 255);
  text("Clinton Voting States", ((width/1.481481481)+(width/40)), ((height/1.052631579)+(height/30)));
  fill(170, 0, 255);
  text("Minnesota", ((width/1.153846154)+(width/40)), ((height/1.052631579)+(height/30)));

  convert();
  //info();
}

void mouseClicked()
{
  checkBoxes(mouseX, mouseY);
}