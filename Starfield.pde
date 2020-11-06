//your code here
Particle[] pat = new Particle[700];
public void setup()
{
  //your code here
  size(500, 500);
  for (int i = 0; i < pat.length; i++)
  {
    pat[i] = new Particle();
  }
  pat[0] = new OddballParticle();
  pat[5] = new OddballParticle(250,200);
}

public void draw()
{
  background(0);
  for (int i = 0; i < pat.length; i++) 
  {
    pat[i].show();
    pat[i].move();
  }
}

public void keyPressed() {
  background(0);
  if (key == 'r' || key == 'R'){
  for (int i = 0; i < pat.length; i++)
  {
    pat[i] = new Particle();
  }
  pat[0] = new OddballParticle();
  pat[5] = new OddballParticle(250,200);
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
    myAngle = (Math.random()*2)*(Math.PI);
    mySpeed = (Math.random()*10);
    myColor = 255;
  }
  public void move() 
  {
    myX = (Math.cos(myAngle)*mySpeed)+myX;
    myY = (Math.sin(myAngle)*mySpeed)+myY;
  	if (myX > 500 || myX < 0 || myY > 500 || myY < 0) 
  	{
      myX = myY = 250;
    }
  }
  public void show() 
  {
  	stroke(255);
    fill(myColor);
    ellipse((float)(myX), (float)(myY), 3, 3);
  }
}

private class OddballParticle extends Particle//inherits from Particle
{
  //your code here
  private double myX, myY;
  OddballParticle() 
  {
  	myX = 300;
    myY = 350;
  }
  OddballParticle(int x, int y)
  {
  	myX = x;
  	myY = y;
  }
  public void move() 
  {
  	myX = myX + (int)(Math.random()*5)-2;
    myY = myY + (int)(Math.random()*5)-2;
  }
  private void sat1()
  {
    fill(255);
    stroke(0);
    //satellite dish
    arc((float)(myX), (float)(myY), 28, 28, (PI/2), 3*(PI/2));
    stroke(190);
    line((float)(myX), (float)(myY+12), (float)(myX+10), (float)(myY));
    line((float)(myX), (float)(myY), (float)(myX+10), (float)(myY));
    line((float)(myX), (float)(myY-12), (float)(myX+10), (float)(myY));
    stroke(0);
    fill(150);
    ellipse((float)(myX+14), (float)(myY), 8, 8);
    //satellite body
    fill(255, 255, 0);
    rect((float)(myX-31), (float)(myY-10), 20, 20);
    fill(150);
    //panels
    rect((float)(myX-25), (float)(myY-27), 10, 15);
    rect((float)(myX-25), (float)(myY+13), 10, 15);
  }
  public void show() 
  {
    sat1();
  }
}


