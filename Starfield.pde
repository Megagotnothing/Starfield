//your code here
Particle[] heck;
void setup()
{
	size(600, 600);
	frameRate(30);
	heck = new Particle[100];
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
		if(heck[i].myY < 200)
		{
			heck[i] = new Particle();
		}
	}
}
void mousePressed()
{
	redraw();
	for(int i = 0; i < heck.length; i++)
	{
		heck[i] = new Particle();
	}
	for(int i = 0; i < 4; i++)
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
	int boundary = 200;
	OddballParticle()
	{
		myX = 300; //(int)(Math.random()*600);
		myY = 600;
		speed = 5;
		boundary = 200;
		//angle = Math.random()*8+Math.PI;
		
	}

	void move()
	{
		myX += (int)(Math.random()*10) - 5;
		myY -= speed;

		if(myY < boundary)
		{
			speed = 0;
		}
	}

	void show()
	{
		fill(0);
		rect((float)myX, (float)myY, 10.0, 10.0);
	}
}


