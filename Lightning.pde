PImage DiscoBall;
int startX = width/2;
int startY = 150;
int endX = width/2;
int endY = 150; 

int startX2 = width/2;
int startY2 = 150;
int endX2 = width/2;
int endY2 = 150; 

int startX3 = width/2;
int startY3 = 150;
int endX3 = width/2;
int endY3 = 150;

int startX4 = width/2-20;
int startY4 = 150;
int endX4 = width/2-20;
int endY4 = 150;

int flash = 0;

void setup(){  
  //String url = "https://openclipart.org/image/2400px/svg_to_png/251881/Glimmering-Disco-Ball-No-Background.png";
  //DiscoBall = loadImage(url, "png");
  DiscoBall = loadImage("discoBall.png");
  //frameRate=(0.2083);
  size(1000,750);
  strokeWeight(2); 
  background(0);
}

void draw(){
  System.out.println(flash);
 while(endY <= 750 ){
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));     
    endX = startX + (int)(Math.random()*40);
    endY = startY + (int)(Math.random()*100)-9;
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  } 

  while(endY2 <= 750 ){
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));     
    endX2 = startX2 + (int)(Math.random()*40)-40;
    endY2 = startY2 + (int)(Math.random()*100)-9;
    line(startX2,startY2,endX2,endY2);
    startX2 = endX2;
    startY2 = endY2;
  } 
    
  while(endY3 <= 750 ){
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));     
    endX3 = startX3 + (int)(Math.random()-40);
    endY3 = startY3 + (int)(Math.random()*100)-9;
    line(startX3,startY3,endX3,endY3);
    startX3 = endX3;
    startY3 = endY3;
  } 
  
  while(endY4 <= 750){
    stroke((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));     
    endX4 = startX4 + (int)(Math.random()*30)+30;
    endY4 = startY4 + (int)(Math.random()*100);
    line(startX4,startY4,endX4,endY4);
    startX4 = endX4;
    startY4 = endY4;
  }
    
  if (flash == 0){
    background(0,0.2);
  }
  else if (flash > 10){
    flash = 0;  
  }
  
  noStroke();
  fill((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  ellipse(width/2,150,300,300);
  
  DiscoBall.resize(300,300);
  image(DiscoBall, width/2-150,0.02);
}

void mousePressed(){
startX = width/2;
startY = 150;
endX = width/2;
endY = 150; 

startX2 = width/2;
startY2 = 150;
endX2 = width/2;
endY2 = 150;

startX3 = width/2;
startY3 = 150;
endX3 = width/2;
endY3 = 150;

startX4 = width/2-20;
startY4 = 150;
endX4 = width/2-20;
endY4 = 150;

flash = flash + 1;
redraw();
}