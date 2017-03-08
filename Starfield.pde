Particle[] particles;
void setup()
{
  size(500,500);
  particles = new Particle[300];
   for(int i = 0; i < particles.length; i++)
     {
     particles[i] = new NormalParticle();
     }
   
   for(int j = 100; j < 200; j++)
   {
     particles[j] = new OddballParticle();
   }
   
   for(int k= 250; k < 252; k++)
   {
     particles[k] = new JumboParticle();
   }
  
}
void draw()
{
  background(0);
  for(int i = 0; i < particles.length; i++)
     {
     particles[i].move();
     particles[i].show();
     }
     
  for(int j = 100; j < 200; j++)
   {
     particles[j].move();
     particles[j].show();
   }
   
  for(int k= 250; k < 252; k++)
   {
     particles[k].move();
     particles[k].show();
   }

  
}
class NormalParticle implements Particle
{
  double x, y, speed, angle;
  int color1, color2, color3;
  
  NormalParticle()
  {
   x = 250;
   y = 250;
   speed = Math.random() * 10;
   angle = Math.random() * 2 * Math.PI;
   color1 = (int)(Math.random() * 255) + 1;
   color2 = (int)(Math.random() * 255) + 1;
   color3 = (int)(Math.random() * 255) + 1; 
  }
  
  public void move() 
  {
   x+= Math.cos(angle) * speed;
   y+= Math.sin(angle) * speed; 
   if (x >= 500 || y >= 500)
   {
     x = 250;
     y = 250;
   }
   
   if (x <= 0 || y <= 0)
   {
     x = 250;
     y = 250;
   }
  }
  
  public void show()
  {
   ellipse((int)x, (int)y, 25, 25);
   fill(color1, color2, color3);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle
{
  double x, y, speed, angle;
  int color1, color2, color3;
  
  OddballParticle()
  {
   x = 250;
   y = 250;
   speed = Math.random() * 7;
   angle = Math.random() * 2 * Math.PI;
   color1 = (int)(Math.random() * 255) + 1;
   color2 = (int)(Math.random() * 255) + 1;
   color3 = (int)(Math.random() * 255) + 1; 
  }
  
  public void move()
  {
   x+= Math.cos(angle) * speed;
   y+= Math.sin(angle) * speed; 
   if (x >= 500 || y >= 500)
   {
     x = 320;
     y = 240;
   }
   
   if (x <= 0 || y <= 0)
   {
     x = 320;
     y = 240;
   }
  }
  
  public void show()
  {
   ellipse((int)x, (int)y, 30, 50);
   fill(color1, color2, color3); 
  }
}
class JumboParticle extends NormalParticle
{
  public void show()
  {
   triangle((int)x, (int)y, (int)(x + 50), (int)y, (int)(x + 40), (int)(y + 60));
   //ellipse((int)x, (int)y, 100, 100); 
   fill(color1, color2, color3);
  }
}
