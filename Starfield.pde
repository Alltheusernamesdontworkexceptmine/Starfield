Particle[] regenald;
void setup()
{
  size(800,800);
  regenald = new Particle[2500];
  for(int i=0; i<regenald.length; i++)
  {
    regenald[i] = new NormalParticle();
  }
  regenald[0] = new OddballParticle();
  regenald[1] = new JumboParticle();
}
void draw()
{
  fill(0,10);
  rect(0,0,width,height);
  noStroke();
  for(int i=0; i<regenald.length; i++)
   {
     regenald[i].show();
     regenald[i].move();
   }  

}
class NormalParticle implements Particle
{
  double myX,myY,myAngle,mySpeed,myH;
  int myColor;
  NormalParticle()
  {
  myX=myY=400;
  myAngle = Math.random()*2*Math.PI;
  mySpeed = Math.random()*5;
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
   {
     myX=myX+Math.cos(myAngle)%mySpeed;
     myY=myY+Math.sin(myAngle)%mySpeed;
     myAngle=myAngle+0.01;
     mySpeed=mySpeed+0.01;
   }
   void show()
   {
     fill(myColor);
     ellipse((float)myX,(float)myY,(int)(Math.random()*5),(int)(Math.random()*5));
   }
   
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle//uses an interface
{
  int startX, startY, myColor;
  OddballParticle()
  {
  startX=startY=400;
  myColor = color(188,58,7);
  }
  public void move()
   {
     startX=startX+(int)(Math.random()*10);
   }
   public void show()
   {
     fill(myColor);
     rect(startX,startY,100,100);
   }
}
class JumboParticle extends NormalParticle //uses inheritance
{
  void move()
   {
     myY=myY+(int)(Math.random()*10);
   }
   void show()
   {
     fill(myColor);
     ellipse(400,(float)myY,50,50);
   }
}
