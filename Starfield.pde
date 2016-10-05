Particle[] cool;
void setup()
{
	background(0);
	size(600, 600);
	cool = new Particle[500];
	for (int i=0; i<cool.length;i++) {
		cool[i] = new NormalParticle();
		cool[200] = new OddballParticle();
		cool[100] = new JumboParticle();
		
	}
	
}
void draw()
{
	background(0);
	for (int i=0; i<cool.length;i++) {
		cool[i].move();
		cool[i].show();
	} 
	
}
class NormalParticle implements Particle
{
	int myColor;
	double myX,myY,mySpeed, myAngle;
	NormalParticle(){
		myX=300;
		myY=300;
		myColor=(int)(Math.random()*200)+100;
		myAngle=(Double)Math.PI*2*Math.random();
		mySpeed=5;
	}

	public void move()
	{
		myX=myX+Math.cos(myAngle)*mySpeed;
		myY=myY+Math.sin(myAngle-5)*mySpeed;
		myAngle=myAngle+.1;

	}
	
	public void show()
	{
		fill(myColor-50,myColor-100,myColor);
		ellipse((float)myX,(float)myY,10,10);
	}
}
interface Particle
{

	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	int myColor;
	double myX,myY,mySpeed, myAngle;
	OddballParticle(){
		myX=300;
		myY=300;
		myColor=(int)(Math.random()*200)+100;
		myAngle=(Double)Math.PI*2*Math.random();
		mySpeed=5;
	}
		public void move()
		{
			myX=myX+Math.cos(myAngle)*mySpeed;
			myY=myY+Math.sin(myAngle)*mySpeed;
			
		}
		public void show()
		{
			fill(myColor-50,myColor-100,myColor);
			ellipse((float)myX,(float)myY,20,20);
	

		}
}
class JumboParticle extends NormalParticle
{
	void show()
	{
		fill(50,230,50,200);
		ellipse((float)myX,(float)myY,50,50);
	}
}