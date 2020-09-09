float xSpeed = 3; // hastighed på bolden i x aksen
float ySpeed = 3; //hastighed på bolden i y aksen
float rad = 100; //cirklens radius
float xecl = 150; //cirklens x akse
float yecl = 150; //cirklens y akse
float boxX = 300; //kassens x akse spawn
float boxY = 300; //kassens y akse spawn
int boxH = 400; //kassens højde
int boxW = 400; //kassens bredde
float speedkantH = -1; 
float speedkantV = -1;

void setup(){
fill(120, 40, 50);
size(600, 600);
rectMode(CENTER);
}
void draw(){
  clear();
  stroke(230, 30, 20);
  fill(80);
rect(width/2, height/2, boxH, boxW);
fill(80, 40, 255);
ellipse(xecl, yecl, rad, rad);

xecl=xecl+xSpeed;
yecl=yecl + ySpeed;
boxX = boxX + speedkantH;
boxY = boxY + speedkantH;

if(boxH == 40 && boxW == 40) {
boxH = 50; boxW = 50; 
} else { 
  boxH--;
  boxW--;

  if(xecl > width/2 + boxX/2){
    xSpeed = xSpeed * (-1);
    ySpeed = ySpeed * (1);
  }
    
  if(yecl > height/2 + boxY/2){
    xSpeed = xSpeed * (1);
    ySpeed = ySpeed * (-1);
  }
   if(xecl < width/2 -(boxX/2)){
     xSpeed = xSpeed * (-1);
     xSpeed = xSpeed * (1);
   }
   if(yecl < height/2 -(boxY/2)){
     ySpeed = ySpeed * (1);
     ySpeed = ySpeed * (-1);
   }
   if(xecl > width/2+boxX/2){
     xecl = width/2+boxX/2;
   }
   if(xecl < width/2-boxX/2){
     xecl = width/2-boxX/2;
   }
   if(yecl > height/2+boxY/2){
     yecl = height/2+boxY/2;
   }
   if(yecl < height/2-boxY/2){
     yecl = height/2-boxY/2;
   }
   if(boxX == 50){
     speedkantV = -1;
     speedkantH = -1;
   }
   if(boxX == 600){
     speedkantV = -1;
     speedkantH = -1;
   }
}
}
