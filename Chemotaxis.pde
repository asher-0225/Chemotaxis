Walker[] fred;
void setup()
{
  size(1000,500);
  frameRate(10);
  Bogus bob = new Bogus();
    bob.show();
  
  fred=new Walker[10];
  for(int i =0; i< fred.length; i++)

  {fred[i] = new Walker();}
}
void draw()
{
  background(100);
  
  for(int i =0; i< fred.length; i++)
  {
    fred[i].show();
    fred[i].walk();
  }
}
  void mousePressed(){
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
