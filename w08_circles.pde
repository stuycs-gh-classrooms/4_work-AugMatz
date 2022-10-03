
int movingX, movingY, radius, x;

void setup() {
  movingY = 25;
  radius = 50;
    movingX = radius;
    movingY = radius*3;
  size(500, 500);
}


void draw() {
  background(255);
  fill(0,250,250);
  int i = 5;
  int xpo = radius;
  while(i>0){
  circle(xpo, radius, radius*2);
  xpo = xpo + radius*2;
  i--;
  }
  fill(250,0,250);
  circle(movingX, movingY, radius*2); 
  movingX++;
  if (movingX == width - radius){
    movingY = movingY + radius*2;
    movingX= 0;
  if (movingY > height){
    movingY = radius *3;
  }
  }
}
