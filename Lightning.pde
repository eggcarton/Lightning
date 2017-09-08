void setup()
{  
  size(1600,1200);
  strokeWeight(2);
  background(0);
}

int startX = 750;
int startY = 0;
int endX = 750;
int endY = 0; 

void draw(){
 while(endY <= 1200 ){
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));      
    endX = startX + (int)(Math.random()*1600)-800;
    endY = startY + (int)(Math.random()*1200)-600 ;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
    }
}
void mousePressed()
{
startX = 750;
startY = 0;
endX =750;
endY = 0; 
redraw();
}