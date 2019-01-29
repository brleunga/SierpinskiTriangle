public void setup()
{
	background(135);
	size(500,500);
}
public void draw()
{
	sierpinski(50,450,400);
}
public void mousePressed()
{
	background((int)(Math.random()*100)+100);
}
public void sierpinski(int x, int y, int len) 
{
	if (len <= 20) {
		triangle(x, y, x+len/2, y-len, x+len, y);
	}
	else {
		fill(0,196,231);
		sierpinski(x, y, len/2);
		fill(0,196,193);
		sierpinski(x+len/2, y, len/2);
		fill(0,229,188);
		sierpinski(x+len/4, y-len/2, len/2);
	}
}