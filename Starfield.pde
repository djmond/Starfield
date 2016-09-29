NormalParticle[] cool;
void setup()
{
	background(0);
	size(600, 600);
	cool = new NormalParticle[500];
	for (int i=0; i<cool.length;i++) {
		cool[i] = new NormalParticle();
		
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
class NormalParticle
{
	int myColor;
	double myX,myY,mySpeed, myAngle;
	NormalParticle(){
		myX=300;
		myY=300;
		myColor=(int)(Math.random()*200);
		myAngle=(Double)Math.PI*2*Math.random();
		mySpeed=5;
	}

	void move()
	{
		myX=myX+Math.cos(myAngle)*mySpeed;
		myY=myY+Math.sin(myAngle)*mySpeed;

	}
	
	void show()
	{
		fill(myColor,myColor,myColor);
		ellipse((float)myX,(float)myY,10,10);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}