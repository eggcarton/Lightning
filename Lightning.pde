int startX = 800;
int startY = 0;
int endX = 800;
int endY = 0;

void setup()
{  
  size(1600,1200);
  strokeWeight();
  background();
}
void draw()
{
  stroke((int)Math.random()*256,(int)Math.random()*256,(int)Math.random()*256)
  while(endY < 1200 ){
    endX = startX + ((int)Math.random()*18)-9 ;
    endY = startY + ((int)Math.random()*10 ;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    
  }
}
void mousePressed()
{
startX = 800;
startY = 0;
endX = 800;
endY = 0;
}