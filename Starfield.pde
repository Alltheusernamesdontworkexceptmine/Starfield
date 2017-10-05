//your code here
void setup()
{
size(500,500);
aBunch = new Particle[200];
for (int i = 0; i < aBunch.length; i++)
{
	aBunch[i] = new NormalParticle();
}
aBunch[i] = new OddballParticle();
}
void draw()
{
 background(0);
 for (int i = 0; i < aBunch.length; i++)
 	aBunch[i].move();
    aBunch[i]show();
}
class NormalParticle implements Particle
{
	float x, y, mySpeed, myAngle;
	int myColor;
	NormalParticle()
	{
		myColor = (int)(Math.random()*255);
		x = 250;
		y = 250;
		mySpeed = (float)(Math.random()*5);
		myAngle = (float)(Math.random()*20);
	}
	public void move()
	{
		x = x + (float)(Math.cos(myAngle)) * mySpeed;
		y = y + (float)(Math.sin(myAngle)) * mySpeed;
	}
	public void show()
	{
		fill(myColor, myColor,0);
		ellipse(x,y,5,5);
	}
}
interface Particle
{
	public void.move();
	public void.show();
}
class OddballParticle implements Particle
{
	public void move()
	{
		x = x + 5;
		y = y - 5;
	}
	public void show()
	{
		fill(55);
		ellipse(x,y,30,30);
	}
}
class JumboParticle //uses inheritance
{
	//your code here
}

