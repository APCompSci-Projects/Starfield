//your code here
Particle[] pat = new Particle[10];
public void setup()
{
  //your code here
  size(500, 500);
  for (int i = 0; i < pat.length; i++)
  {
    pat[i] = new Particle();
    pat[0] = new OddballParticle();
  }
}
public void draw()
{
  background(0);
  for (int i = 0; i < pat.length; i++) {
    pat[i].show();
  }
}
private class Particle
{
  //your code here
  private double myX, myY, myAngle, mySpeed;
  private int myColor;
  Particle() 
  {
    myX = 250;
    myY = 250;
    myAngle = 2.05;
    mySpeed = 5;
    myColor = (255);
  }
  void move() 
  {
     myX = ((int)(Math.cos(myAngle))*mySpeed+myX);
     myY = ((int)(Math.sin(myAngle))*mySpeed+myY);
  }
  void show() 
  {
    fill(myColor,myColor,myColor);
    ellipse((float)(myX), (float)(myY), 8, 8);
  }
}

private class OddballParticle //inherits from Particle
{
  //your code here
  private double myX, myY, myAngle, mySpeed;
  private int myColor;
  OddballParticle() 
  {
  	myX = 300;
    myY = 250;
    myAngle = 5;
    mySpeed = 7;
    myColor = 255;
  }
  void move() 
  {
  	yX = ((int)(Math.cos(myAngle))*mySpeed+myX);
    myY = ((int)(Math.sin(myAngle))*mySpeed+myY);
  }
  void show() 
  {
    rect(55, 50, 10, 10);
  }
}


