Walker [] bob = new Walker[100];
void setup()
{
  size(1000, 500);
  frameRate(60);
  int i = 0;
  while (i < bob.length) {
    bob[i] = new Walker();
    i++;
  }
}
void draw()
{
  background(0);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].move();
    bob[i].dodge();
    bob[i].show();
  }
}
class Walker {
  int myX, myY, myColor, mySize;
  Walker()
  {
    myX = (int)(Math.random()*1000);
    myY = (int)(Math.random()*500);
    mySize = 50;
    myColor = color(24, 90, 147);
  }
  void move() {
    myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;
  }
  void dodge() {
    if (mouseX - myX <= 0 && dist(myX, myY, mouseX, mouseY) <= mySize/2 + 20) {
      myX = myX + (int)(Math.random()*10)-2; 
    }
  }
  void show() {
    fill(myColor);
    noStroke();
    ellipse(myX, myY, mySize, mySize);
    fill(225, 30, 0);
    rect(myX, myY, 30, 25);
    fill(0, 0, 225);
    rect(myX, myY, 20, 20);
  }
}
