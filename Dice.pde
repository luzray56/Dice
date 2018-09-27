void setup()
{
  noLoop();
  size(600,600);
}
void draw()
{
  int total = 0;
  background((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  for (int x=25;x<=575;x+=80)
    {
    for (int y=25;y<=575;y+=80)
      {
        Die bob = new Die(x,y);
        bob.roll();
        bob.show();
        if (bob.result == 1)
          total = total + 1;
        if (bob.result == 2)
          total = total + 2;
        if (bob.result == 3)
          total = total + 3;
        if (bob.result == 4)
          total = total + 4;
        if (bob.result == 5)
          total = total + 5;
        if (bob.result == 6)
          total = total + 6;         
      }
    }
    textSize(25);
    if (total >= 200)
      text("Total count: " + total + "!!!!!!!!", 50, 580);
    else
      text("Total count: " + total, 50, 580);
}
void mousePressed()
{
  redraw();
}
class Die
{
  int myX, myY, result;
   Die(int x, int y)
   {
     myX = x;
     myY = y;
   }
   void roll()
   {
   result = (int)(Math.random()*6) + 1;
   } 
   void show()
   {
     fill(255);
     stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
     strokeWeight(2);
     rect(myX,myY,50,50);
     if (result == 1)
     {
       fill(0);
       ellipse(myX+25,myY+25,10,10);
     }
     if (result == 2)
     {
       fill(0);
       ellipse(myX+15,myY+15,10,10);
       ellipse(myX+35,myY+35,10,10);
     }
     if (result == 3)
     {
       fill(0);
       ellipse(myX+15,myY+15,10,10);
       ellipse(myX+25,myY+25,10,10);
       ellipse(myX+35,myY+35,10,10);
     }
     if (result == 4)
     {
       fill(0);
       ellipse(myX+15,myY+15,10,10);
       ellipse(myX+35,myY+35,10,10);
       ellipse(myX+15,myY+35,10,10);
       ellipse(myX+35,myY+15,10,10);
     }
     if (result == 5)
     {
       fill(0);
       ellipse(myX+15,myY+15,10,10);
       ellipse(myX+35,myY+35,10,10);
       ellipse(myX+15,myY+35,10,10);
       ellipse(myX+35,myY+15,10,10);
       ellipse(myX+25,myY+25,10,10);
     }
     if (result == 6)
     {
       fill(0);
       ellipse(myX+15,myY+10,10,10);
       ellipse(myX+35,myY+40,10,10);
       ellipse(myX+15,myY+40,10,10);
       ellipse(myX+35,myY+10,10,10);
       ellipse(myX+15,myY+25,10,10);
       ellipse(myX+35,myY+25,10,10);
     }
   }
}