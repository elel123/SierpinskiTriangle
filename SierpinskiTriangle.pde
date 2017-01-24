public void setup()
{
	background(255);
	size(700, 700);
}
public void draw()
{
	sierpinski(350, 350, 1000);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 20)
	{
		fill(0);
		triangle(x, y, x + len/2, y - len, x + len, y);
	}
	else 
	{
		sierpinski(x, y, len/2);
		sierpinski(len/2, y, len/2);
		sierpinski(len/4, len/2, len/2);
	}
}