//your code here
Particle[] heck;
void setup()
{
	size(600, 600);
	frameRate(30);
	heck = new Particle[100];
	heck = new OddballParticle[4];
	for(int i = 0; i < heck.length; i++)
	{
		heck[i] = new Particle();
	}

	for(int i = 0; i < heck.length; i++)
	{
		heck[i] = new OddballParticle();
	}
}
void draw()
{
	background(255);
	for(int i = 0; i < heck.length; i++)
	{
		heck[i].move();
		heck[i].show();
	}

	for(int i = 0; i < heck.length; i++)
	{
		heck[i].move();
		heck[i].show();
	}
}
void mousePressed()
{
	redraw();
	for(int i = 0; i < heck.length; i++)
	{
		heck[i] = new Particle();
	}
	for(int i = 0; i < heck.length; i++)
	{
		heck[i] = new OddballParticle();
	}
}
class Particle
{
	double myX,myY,angle,speed;
	//int speed;
	Particle()
	{
		myX = 300;
		myY = 300;
		speed = (int)(Math.random()*10);
		angle = Math.random()*2*Math.PI;
	}
	void move()
	{

		myX += Math.cos(angle)*speed;
		myY += Math.sin(angle)*speed;

	}

	void show()
	{
		fill(0);
		ellipse((float)myX, (float)myY, 10.0, 2.0);

	}
}
class OddballParticle extends Particle //inherits from Particle
{
	int myX,myY, boundary;
	OddballParticle()
	{
		myX = (int)(Math.random()*600);
		myY = 600;
		boundary = 200;
	}

	void move()
	{
		myX += (int)(Math.random()*10-5);
		myY += 5;
	}

	void show()
	{
		fill(255,0,0);
		rect(myX, myY, 10, 10);
	}
}


