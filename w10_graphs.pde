int radius = 5;
int drawRadius = 40;
int repeatRadius = drawRadius;
int wx = 0;
int wcx = 0;
int amp = 50;
int wy = amp;
int wny = wy;

float rot = 0;
boolean cont = true;
int radBig = amp;

//int x = 0;
//int y = height/2;
//int dx = 0;
//int dy = height/2;
void setup(){
  size(500,500);
  //noStroke();
  background(0);
}

void draw() {
  

wave();
drawCircle(50,50);
doubleCircle(200,200);
rot+= PI/180;
println(rot);
}

void wave(){
  circle(wx, wy, radius*2);
  wx++;
  wcx++;
  wy = int(amp*sin(3*PI*wcx/width) + wny);

  if (wx > width+radius){
    wx = 1;
  }
 // println(wy, wx);
}

void drawCircle(int x,int y){
  if (rot < 2*PI){
    fill(250,0,0);
  circle(x + amp*cos(rot),y + amp*sin(rot),radius*2);
  fill(255);
  }
}

void doubleCircle(int x, int y){
  
   if (radBig <0){
      cont = false;
  }
  
  if ( cont == true){
     circle(x + radBig*cos(rot),y + radBig*sin(rot), radius*2);
  //println(true);

  }
  if (rot % (2*PI) == 0 && rot>=2*PI && cont == true){
          radBig= radBig-radius*3;
  }


//  println(y);
}
