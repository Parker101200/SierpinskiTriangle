public int num;
public void setup()
{
	size(700,700);
	num =1;
}
public void draw()
{
	background(0);
	sierpinski(0,700,700, num);
}
public void mousePressed()//optional
{
	if(mouseButton == LEFT)
	{
		num += 1;
	}
	if(mouseButton == RIGHT)
	{
		num -= 1;
		if(num<1)
		{
			num = 1;
		}
	}
}
public void keyPressed()
{
	if(key == 'r')
	{
		num = 1;
	}
}
public void sierpinski(int x, int y, int len, int triNum) 
{
	if(triNum < 2)
	{
		fill(255,255,0);
		triangle(x, y, x+len, y, x+len/2, y-len);
	}
	else
	{
		fill(255,255,0);
		sierpinski(x, y, len/2, triNum - 1);
		sierpinski(x+len/2, y, len/2, triNum - 1);
		sierpinski(x+len/4, y - len/2, len/2, triNum - 1);
	}
}