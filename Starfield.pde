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
		for(int s=0; s<100;s++){
			cool[s] = new SpinnyParticle();
		}
		for(int r=0;r<15;r++)
		{
			cool[r] = new RektParticle();
		}

		
	}
	
}
void draw()
{
	fill(0,0,0,20);
	rect(0,0,600,600);
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
		mySpeed=10;
	}

	public void move()
	{
		myX=myX+Math.cos(myAngle)*mySpeed;
		myY=myY+Math.sin(myAngle-5)*mySpeed;
		myAngle=myAngle+.1;

	}
	
	public void show()
	{
		fill(myColor-80,myColor-100,myColor+60);
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
			fill(myColor-80,myColor-100,myColor+60,200);
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
class SpinnyParticle implements Particle
{
	int myColor;
	double myX,myY,mySpeed, myAngle;
	SpinnyParticle(){
		myColor=((int)(Math.random()*255)+1);
		myX=300;
		myY=300;
		myAngle=(Double)Math.PI*2*Math.random();
		mySpeed=(double)Math.random()*5+3;
	}
	public void move()
		{
			myX=myX+Math.cos(myAngle)*mySpeed;
			myY=myY+Math.sin(myAngle)*mySpeed;
			myAngle=myAngle+.02;
		}
		public void show()
		{
			fill((int)(Math.random()*255)+1,(int)(Math.random()*255)+1,(int)(Math.random()*255)+1);
			ellipse((float)myX,(float)myY,20,20);
			
	

		}
	}
		class RektParticle implements Particle
		{
			int myColor;
		double myX,myY;
		RektParticle(){
			myColor=((int)(Math.random()*255)+1);
			myX=300;
			myY=(int)(Math.random()*10)+1;
			

		}
		public void move()
		{
			myX=myX+5;
			myY=myY+0;
			if(myX>600)
			{
				myX=0;
				myY=0;
			}


		}
		public void show()
		{
			fill(myColor,myColor,myColor);
			rect((float)myX,(float)myY,20,30);

		}


		}

