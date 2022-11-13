int[] xvals = new int[100];
int[] yvals = new int[xvals.length];
int numPoints = 0;

void setup(){
size(600, 600);
background(0);
stroke(255);
makeLines(xvals, yvals, 10);
drawLines(xvals, yvals);
}


//void draw(){
//makeLines(xvals, yvals, 10);
//drawLines(xvals, yvals);

//}


void makeLines(int[] xs, int[] ys, int points){
  numPoints = points;
  if(points <= xvals.length){
    println("x: ");
    for(int i=0; i<points; i++){
      xs[i] = int(random(0, width));
      print(xs[i] +", ");
    }
    println("y: ");
    for(int i=0; i<points; i++){
      ys[i] = int(random(0, height));
            print(ys[i] +", ");

    }
  }
  
}

void drawLines(int[] xs, int[] ys){
  for(int i = 1; i < numPoints; i++){
    line(xs[i], ys[i], xs[i-1], ys[i-1]);
  }
  
}
