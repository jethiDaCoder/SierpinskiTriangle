public void setup()
{
  size(600, 600);
}
public void draw()
{
  sierpinski(0, 600, 600);
  
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len <= 5){
    triangle(x, y, x + len, y, x +len/2, y-sqrt(3)/2*len);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y - len/2, len/2);
  }
}
