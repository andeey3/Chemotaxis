class Particle {
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle () {
    mySpeed = Math.random()*10;
    myAngle = Math.random () * (2Math.PI);
    myX = Math.cos(myAngle)mySpeed +500;
    myY = Math.sin(myAngle)mySpeed +500;
    myColor = color((int)(Math.random()256), (int)(Math.random()256), (int)(Math.random()256));
  }
  void move () {
    myX = myX + (Math.cos(myAngle)mySpeed) ;
    myY = myY + (Math.sin(myAngle)mySpeed) ;
  }
  void show () {
    fill(myColor);
    noStroke();
    ellipse((float) myX, (float)myY, 10, 10);
  }
}
class OddballParticle extends Particle {
  OddballParticle() {
    mySpeed = Math.random()*10;
    myAngle = Math.random () * (2Math.PI);
    myX = Math.cos(myAngle)mySpeed +500;
    myY = Math.sin(myAngle)mySpeed +500;
    myColor = color((int)(Math.random()256), (int)(Math.random()256), (int)(Math.random()256));
  }
  void move () {
  myX = myX + (Math.cos(myAngle)mySpeed) ;
  myY = myY + (Math.sin(myAngle)mySpeed) ;
}
  void show () {
    fill (255);
    ellipse ((float)myX, (float)myY, 50, 50);
  }
}
Particle [] one;
void setup () {
  frameRate(300); 
  background(255);
  size(1000, 1000);
  one = new Particle [500];
  for (int i = 0; i<6; i++) {
    one [i] = new OddballParticle();
  }
  for (int i = 6; i < one.length; i++) {
    one [i] = new Particle ();
  }
}
void draw () {
  background (0);
  for (int i = 0; i < one.length; i++) {
    one [i].move();
    one [i].show();
  }
}
void mousePressed () { 
 background (0);
  for (int i = 0; i < one.length; i++) {
    one [i].move();
    one [i].show();
  }
}
