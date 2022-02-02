int x = 0;
int y = 600;
int len = 600;

public void setup()
{
  background(0);
  size(600, 600);
}
public void draw()
{
  background(0);
  sierpinski(x, y, len);
  //len += 50;
  if (len >= 1200){
    len = 600; 
  }
  
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

void mouseClicked(){
  if (mouseButton == LEFT){
    len -= 50;
  } else {
    len += 50;
  }
  
}
