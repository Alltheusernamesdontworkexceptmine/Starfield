Particle[] regenald;


void setup()
{
    size(800,800);
  regenald = new Particle[10000];
  //regenald[] = new OddballParticle();
  for(int i=0; i<regenald.length; i++)
  {
    regenald[i] = new NormalParticle();
  }
}
void draw()
{
    fill(0,1000);
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
  double myX,myY,myAngle,mySpeed;
  int myColor;
  NormalParticle()
  {
  myX=myY=400;
  myAngle = Math.random()*2*Math.PI;
  mySpeed = Math.random()*10;
  myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void move()
   {
     myX=myX+Math.cos(myAngle)*mySpeed;
     myY=myY+Math.sin(myAngle)*mySpeed;
     myAngle=myAngle+0.01;
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
//class OddballParticle implements Particle//uses an interface

class JumboParticle extends NormalParticle //uses inheritance
{
    public void show()
  {
  }
  public void move()
  {
  }
}
