//int[] init = {1, 2, 3, 4, 5, 0, 7, 8, 6};
//int[] temp = {1, 2, 3, 4, 5, 0, 7, 8, 6};
//int[] init = {1, 2, 3, 4, 5, 6, 0, 7, 8}; //j =47 made
//int[] temp = {1, 2, 3, 4, 5, 6, 0, 7, 8};
int[] init = {1, 5, 2, 0, 4, 3, 7, 8, 6}; //j =47 made
int[] temp = {1, 5, 2, 0, 4, 3, 7, 8, 6};
//int[] init = {3, 1, 2, 4, 7, 5, 6, 0, 8}; //cannnot solve by this program...
//int[] temp = {3, 1, 2, 4, 7, 5, 6, 0, 8};
int[] ideal = {1, 2, 3, 4, 5, 6, 7, 8, 0};

int currentDepth = -1;

boolean judge(int[]judgeSequence) { //check board
  boolean tempAND = true;
  for (int i = 0; i<=8; i++) {
    if (judgeSequence[i] != ideal[i]) {
      tempAND = false;
    } 
  }
  return tempAND;
}

int checkWhereZero(int [] targetSequence) {
  int whereZero = 0;
  for (int i = 0; i <= 8; i++) {
    if (targetSequence[i] == 0) whereZero = i; //temp
  }
  return whereZero;
}

boolean checkSlidePossible(int where0, int direction) { //easy edagari
  boolean slidePossible = true;
  if (where0 == 0) {
    if (direction == 0 || direction == 3) {
      slidePossible = false;
    }
  } else if (where0 == 1) {
    if (direction == 0) {
      slidePossible = false;
    }
  } else if (where0 == 2) {
    if (direction == 0 || direction == 2) {
      slidePossible = false;
    }
  } else if (where0 == 3) {
    if (direction == 3) {
      slidePossible = false;
    }
  } else if (where0 == 5) {
    if (direction == 2) {
      slidePossible = false;
    }
  } else if (where0 == 6) {
    if (direction == 1 || direction == 3) {
      slidePossible = false;
    }
  } else if (where0 == 7) {
    if (direction == 1) {
      slidePossible = false;
    }
  } else if (where0 == 8) {
    if (direction == 1 || direction == 2) {
      slidePossible = false;
    }
  } else {
    slidePossible = true;
  }
  return slidePossible;
}

int []slide(int where0, int direction) {
  int [] newtemp = temp;
  if (direction == 0) {
    int tempNext0 = temp[where0 - 3];
    temp[where0 - 3] = 0;
    temp[where0] = tempNext0;
  } else if (direction == 1) {
    int tempNext0 = temp[where0 + 3];
    temp[where0 + 3] = 0;
    temp[where0] = tempNext0;
  } else if (direction == 2) {
    int tempNext0 = temp[where0 + 1];
    temp[where0 + 1] = 0;
    temp[where0] = tempNext0;
  } else if (direction == 3) {
    int tempNext0 = temp[where0 - 1];
    temp[where0 - 1] = 0;
    temp[where0] = tempNext0;
  }
  return newtemp;
}

int [] solve() {
  int depth = 30;  
  int [] directionSequence = new int [depth + 1];
  for (int i = 0; i <= depth; i++) {
    directionSequence[i] = 0; //initial value
  }
  directionSequence[0] = -1;

  //long power = 1;
  //for(int i = 0; i < depth; i++) power *= 4; //(out of range, maybe 15 is max)

  for (long j = 0; j < 1000; j++) { //j<power
    //boolean solved = false;
    directionSequence[0] += 1;
    for (int i = 0; i <= depth; i++) {
      if (directionSequence[i] >= 4) {
        directionSequence[i] = 0;
        directionSequence[i + 1] += 1;
      } else break;
    }
    println("directionSequence");
    println(directionSequence);
    
    for(int i = 0; i <= depth; i++){
      int whereZero = checkWhereZero(temp);
      int direction = directionSequence[i];
      
      currentDepth += 1;
      
      if(checkSlidePossible(whereZero, direction) == false){
        for(int k = 0; k <= 8; k++){
          temp[k] = init[k]; 
        }
        currentDepth = -1;
        
        break;
      }else{
        temp = slide(whereZero, direction);
        println("temp");
        println(temp);
        if(judge(temp)){
          println("solved!");
          return directionSequence;
        }
      }        
    }
  }
  println("cannot solve...too complex");
  return directionSequence;
}