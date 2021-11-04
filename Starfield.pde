//your code here
Starling[]manyPart = new Starling[600];

void setup()
{
  //your code here
  size(500, 500);
  for (int i = 0; i<5; i++)
    manyPart[i] = new OddballParticle();
  for (int i = 5; i<manyPart.length; i++)
    manyPart[i] = new Starling();
}

void draw()
{
  //background(0);
  noStroke();
  for (int i = 0; i<manyPart.length; i++) {
    manyPart[i].move();
    manyPart[i].show();
  }
}
class Starling
{
  double myX, myY, myAngle, mySpeed, mySize;
  int R, G, B, myColor;
  Starling()
  {
    myX = 250;
    myY = 250;
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = (Math.random()*5);
    R = (int)(Math.random()*257);
    G = (int)(Math.random()*257);
    B = (int)(Math.random()*257);
    myColor = (int)(Math.random()*200);
    mySize = 7.0;
  }
  void move()
  {
    myX = myX + mySpeed * Math.cos(myAngle);
    myY = myY + mySpeed * Math.sin(myAngle);
  }


  void show()
  {
    fill(R,G,B);
    ellipse((float)myX, (float)myY, (float)mySize, (float)mySize);
  }
}

class OddballParticle extends Starling //inherits from Particle
{
  //your code here
  OddballParticle()
  {
    myX = (int)(Math.random()*6)*100;
    myY = (int)(Math.random()*6)*100;
    myAngle = (Math.random()*2)*Math.PI;
    mySpeed = (Math.random()*3);
    R = (int)(Math.random()*100)+150;
    G = (int)(Math.random()*100)+150;
    B = (int)(Math.random()*100)+150;
    mySize = (int)(Math.random()*20);
  }
  void move() {
    myX = myX - mySpeed * Math.cos(myAngle);
    myY = myY - mySpeed * Math.sin(myAngle);
  }

  void show() {
    fill(R, G, B);
    rect((float)myX, (float)myY, (float)mySize, (float)mySize);
    ellipse((float)myX + (float)mySize/2, (float)myY + (float)mySize/2, (float)mySize, (float)mySize);
    ellipse((float)myX + (float)mySize/2, (float)myY + (float)mySize/2, (float)mySize - (float)mySize/2, (float)mySize - (float)mySize/2);
  }
}


