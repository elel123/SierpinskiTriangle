
public void setup()
{
	background(255);
	size(700, 700);
}
int drag = 600;
public void draw()
{
	sierpinski(50, 650, 600);
}
public void mouseDragged()//optional
{

}
public void mouseClicked()
{
	
}
public void sierpinski(int x, int y, int len) 
{
	if(len <= 10)
	{
		fill(0);
		triangle(x, y, x + len/2, y - len, x + len, y);
	}
	else 
	{
		sierpinski(x, y, len/2);
		sierpinski(x + len/2, y, len/2);
		sierpinski(x + len/4, y - (len/2), len/2);

	}
}