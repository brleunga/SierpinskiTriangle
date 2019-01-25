public void setup()
{
	background(25);
	size(500,500);
}
public void draw()
{
	fill(0,196,231);
	sierpinski(50,450,400);
}
public void mousePressed()
{
	background(25);
	//fill((int)(Math.random()*130)+125,(int)(Math.random()*130)+125,(int)(Math.random()*130)+125);
	//sierpinski(50,450,400);
}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20) {
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else {
		sierpinski(x, y, len/2);
		sierpinski(x+len/2, y, len/2);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}