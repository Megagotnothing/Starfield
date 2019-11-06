//your code here
Particle[] heck;
int part = 1;
double thatX = 0;
void setup()
{
	size(600, 600);
	frameRate(30);
	heck = new Particle[1000];
	for(int i = 0; i < heck.length; i++)
	{
		heck[i] = new OddballParticle();

	}
}
void draw()
{
	background(0);
	for(int i = 0; i < part; i++)
	{
		heck[i].move();
		heck[i].show();
		if(heck[i].myY < 150 && part != 100)
		{
			for(int j = 0; j < heck.length; j++)
			{
				thatX = heck[0].myX;
				heck[j] = new Particle();
				part = 100;

			}
		}
	}

}
void mousePressed()
{
	redraw();
	part = 1;
	background(0);
	for(int i = 0; i < heck.length; i++)
	{
		heck[i] = new OddballParticle();

	}

}
class Particle
{
	double myX,myY,angle,speed;
	Particle()
	{
		myX = thatX;
		myY = 150;
		speed = (int)(Math.random()*20);
		angle = Math.random()*2*Math.PI;
	}
	void move()
	{

		myX += Math.cos(angle)*speed;
		myY += Math.sin(angle)*speed;

	}

	void show()
	{
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		noStroke();
		ellipse((float)myX, (float)myY, 10.0, 10.0);

	}
}
class OddballParticle extends Particle //inherits from Particle
{
	int boundary;
	OddballParticle()
	{
		myX = (int)(Math.random()*450-150);
		myY = 600;
		speed = 5;
		boundary = 0;
		//angle = Math.random()*8+Math.PI;
		
	}

	void move()
	{
		myX += (int)(Math.random()*10) - 5;
		myY -= Math.random()*speed;

		if(myY < boundary)
		{
			speed = 0;
		}
	}

	void show()
	{
		fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		rect((float)myX, (float)myY, 10.0, 10.0);
	}

}


