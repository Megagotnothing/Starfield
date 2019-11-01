//your code here
Particle[] heck;
void setup()
{
	size(600, 600);
	heck = new Particle[100];
	for(int i = 0; i < heck.length; i++)
	{
		heck[i] = new Particle();
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
}
void mousePressed()
{
	redraw();
	for(int i = 0; i < heck.length; i++)
	{
		heck[i] = new Particle();
	}
}
class Particle
{
	double myX,myY,angle;
	int speed;
	Particle()
	{
		myX = 250.0;
		myY = 250.0;
		speed = 5;// (int) Math.random()*10;
		angle = Math.random()*2*Math.PI;
	}
	void move()
	{
		myX += Math.sin(angle) * 10;
		myY += Math.cos(angle) * 10;
	}

	void show()
	{
		ellipse((float)myX, (float)myY, 10.0, 2.0);

	}
}
/*
class OddballParticle //inherits from Particle
{
	//your code here
}
*/

