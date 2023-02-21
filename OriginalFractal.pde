public void setup()
{
  size(1000,1000);
}
public void draw()
{
}
public void fractal(float x ,float y,float len)
{
  int C = (int)(Math.random()*21);
  int C1 = (int)(Math.random()*255);
  int C2 = (int)(Math.random()*255);
  ellipse(x,y,len,len);
  if (len < 20)
  {
    noStroke();
    fill(C,C1,C2);
    ellipse(x,y,len,len);
  }
  else
  {
    fractal(x,y,len/2);
    fractal(x+len/2,y+len/5,len/4);
    fractal(x-len/2,y-len/2,len/4);
    fractal(x+len/2,y-len/2,len/4);
    fractal(x-len/2,y+len/2,len/4);
    fractal(x+len/2,y+len/1.2,len/2);
  }
}
void mousePressed()
{
  background(0);
  float leng = (float)(20 + (Math.sqrt(((400-mouseX)*(550-mouseX)+((400-mouseY)*(350-mouseY))))));
  fractal(mouseX,mouseY,leng);
}
