int[] sortHeights = new int[19];
int[] randHeights = new int[19];
int randAverage = 0;
int sortAverage = 0;


void setup(){
  size(600,400);
  background(255);
  print(randHeights.length);
}

void draw(){
  background(255);
  for( int s = 0; s < randHeights.length; s++){
    rect(
    s * width/randHeights.length,
    height/2,
    width/randHeights.length,
    randHeights[s]
    );
    randHeights[s] -= random(0,2);
    
    randAverage -= randHeights[s]/randHeights.length;

    
  }
  line(0, height/2-randAverage, width, height/2-randAverage);
  randAverage = 0;
  
  
    for( int s = 0; s < sortHeights.length; s++){
    rect(
    s * width/sortHeights.length,
    height,
    width/sortHeights.length,
    sortHeights[s]
    );
 //   sortHeights[s] -= random(0,(2/10*abs(s-10)));
  //  sortHeights[s] -= random(0,(2/10));

     sortHeights[s] -= random (0.1, 2);
  //   sortHeights[s] -= random (0.1, abs(s-10)*5;

    

    
    sortAverage -= sortHeights[s]/sortHeights.length;

    
  }
  line(0, height-sortAverage, width, height-sortAverage);
  sortAverage = 0;
  
  
  

}
