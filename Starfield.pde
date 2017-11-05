Particle[] arrayBob;
void setup()
{
	size(600,600);
	arrayBob = new NormalParticle[145];
	for(int i = 0; i <arrayBob.length; i++)
  {
    arrayBob[i] = new NormalParticle();
  }
  arrayBob[2] = new JumboParticle();
  arrayBob[3] = new OddballParticle();
}

void draw()
{
  background(200);
  for(int i = 0; i <arrayBob.length; i++)
  {
    arrayBob[i].show();
    arrayBob[i].move();
  }
}

interface Particle
{
	public void show();
	public void move();
}

class NormalParticle implements Particle
{
	double myX, myY, angle, speed;
	int myColor;
	NormalParticle()
	{
		myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    myX = myY = 255;
    speed = (int)(Math.random()+1)*16;
    angle = (Math.random())*4*Math.PI;
	}

	 public void move()
  {
    myX = myX + cos((float)angle) * speed;
    myY = myY + sin((float)angle) * speed;
    if((myX>600)||(myX<0)||(myY>600)||(myY<0))
    {
      myX = myY =255;
    }

  }
  public void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY, 45,45);
  }
}

class JumboParticle extends NormalParticle
{
  public void show()
  {
    fill(100,100,100);
    ellipse((float)myX,(float)myY, 80,80);
  }
}

class OddballParticle extends NormalParticle
{
  public void show()
  {
    rect((float)myX,(float)myY, 45,45);
  }
  
  public void move()
  {
   myX = myX + (Math.random()*8)-2;
   myY = myY + (Math.random()*8)-2;
  }
}

