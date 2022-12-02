class Land{
  int state, nextState, landSize, x,y;
  color landColor;
  
  Land (int lx,int ly,int ps, int t){
    x=lx;
    y=ly;
    state = t;
    landSize = ps;
    
  }
  
  void updateNextState(int next){
        if (state == 1 || state== 3 && (next != 2 || next != 0)){

    nextState = next;
        }
  }
//    set nextState based on rules
    
  void display(){
    if(state==0){
    fill(DIRT_COLOR);
    }
        if(state==1){
    fill(FIRE_COLOR);
    }
        if(state==2){
    fill(BURNT_COLOR);
    }
        if(state==3){
    fill(GRASS_COLOR);
    }
    else{println("what");}
    rect(x,y,landSize,landSize);
    
  }
  
  void changeState(){
//    if (state == 1 || state== 3){
          if (state == 1 || state== 3 && (nextState != 2 || nextState != 0)){

    state = nextState;
    display();
    }
  }
//    set state to next state
  
  
  
  
  
  
  
}
