Walker[] fred;
bigboy[] john;
void setup()
{
  size(1000, 500);
  frameRate(10);
  Bogus bob = new Bogus();
  bob.show();

  fred=new Walker[10];
  john=new bigboy[5];
  for (int i =0; i< fred.length; i++)
    {
      fred[i] = new Walker();
    }
  for (int r =0; r< john.length; r++)
  {
    john[r]=new bigboy();
  }
}
void draw()
{
  background(100);

  for (int i =0; i< fred.length; i++)
  {
    fred[i].show();
    fred[i].walk();
  }
  for (int r =0; r< john.length; r++)
  { 
    john[r].show();
    john[r].walk();
  }
}
void mousePressed() {
  Bogus bob = new Bogus();
  bob.show();
}
class Bogus
{
  int myColor;
  Bogus()
  {
  myColor = color((int)(Math.random()*30)-15, (int)(Math.random()*210)-15, (int)(Math.random()*300)-15);
}
void show()
{
  fill(myColor);
  ellipse(50,50,50,50);
}
}

class Walker
{
  int myX, myY;
  Walker()
  {
    myX=(int)(Math.random()*1000);
    myY=(int)(Math.random()*500);
   
  }
  void walk()
  {
    myX=myX+ (int)(Math.random()*30)-15;
    myY=myY+ (int)(Math.random()*30)-15;
  }
  void show()
 
  {ellipse(myX,myY,50,50);
  triangle(myX+30,myY+30, myX+20, myY-20, myX-30, myY-30);
  triangle(myX+10,myY+10, myX-40, myY+40, myX-10, myY-10);
  }
}
class bigboy
{
  int myX, myY;
  bigboy()
  {
    myX=(int)(Math.random()*1000);
    myY=(int)(Math.random()*500);
   
  }
  void walk()
  {
    myX=myX+ (int)(Math.random()*30)-15;
    myY=myY+ (int)(Math.random()*30)-15;
  }
  void show()
 
  {
  ellipse(myX,myY,50,50);
  ellipse(myX-20, myY, 20,20);
  ellipse(myX+20, myY, 20, 20);
  ellipse(myX-20, myY, 8,8);
  ellipse(myX+20, myY, 8, 8);
  ellipse(myX, myY+8, 10,5);

  }
}
