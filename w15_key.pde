int[] xvals = new int[100];
int[] yvals = new int[xvals.length];
int numPoints = 0;
int xMod=1, yMod=1;

void setup(){
size(600, 600);
background(0);
stroke(255);
drawLines(xvals, yvals);
}


void draw(){
background(0);
drawLines(xvals, yvals);

}


//void makeLines(int[] xs, int[] ys, int points){
//  numPoints = points;
//  if(points <= xvals.length){
//    println("x: ");
//    for(int i=0; i<points; i++){
//      xs[i] = int(random(0, width));
//      print(xs[i] +", ");
//    }
//    println("y: ");
//    for(int i=0; i<points; i++){
//      ys[i] = int(random(0, height));
//            print(ys[i] +", ");

//    }
//  }
  
//}

void drawLines(int[] xs, int[] ys){
  if(numPoints <= xvals.length){

  for(int i = 1; i < numPoints; i++){
    stroke(random(0,256), random(0,256), random(0,256));
    line(xs[i], ys[i], xs[i-1], ys[i-1]);
  }
  
  }
  
}

void mousePressed(){
 if(numPoints+1 <= xvals.length){

  
  xvals[numPoints] = mouseX;
  yvals[numPoints] = mouseY;
  drawLines(xvals, yvals);

  numPoints ++;
 }
  
}

//if keyPressed(){
//  if(key == 'c'){
//    background(0);
//  }
  
//}



void keyPressed(){
  if(key == 'c'){
    for(int i=0; i < numPoints; i++){
      xvals [i] = 0;
      yvals [i] = 0;

    }
    numPoints = 0;
  }
  if(keyCode == UP){
    for(int i=0; i < numPoints; i++){
      yvals [i] -= yMod;
    }
  }
  if(keyCode == DOWN){
        for(int i=0; i < numPoints; i++){
      yvals [i] += yMod;
    }
  }
  if(keyCode == LEFT){
        for(int i=0; i < numPoints; i++){
      xvals [i] -= xMod;
    }
  }
  if(keyCode == RIGHT){
        for(int i=0; i < numPoints; i++){
      xvals [i] += xMod;
    }
  }
  
}



void moveLines(){
  for(int i=0; i < numPoints; i++){
    xvals [i] = 0;
    yvals [i] = 0;

  }
  
}
