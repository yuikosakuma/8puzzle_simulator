boolean modeDemo = false;

int click = -1;
int [] answer;
void setup() {
  size(1200, 900);
  smooth();
  noStroke();
  font_setup();
}

void draw() {
  background(0);
  board();
  instruction();
}

void keyPressed() {
  switch(key) {
  case ENTER:
    answer = solve();
    assign_tile(init);
    temp = init;
    println(currentDepth);
    modeDemo = true;
    //show_answer(answer);
    break;
  case 'j':
    click += 1;
    print("click");
    println(click);
    show_answer(answer);
    if(click >= currentDepth){println("done!");click = -1;}
    println(answer);
    break;
  }
}

void show_answer(int[]answerSequence) {
  int [] solvedDirection = answerSequence;
  int [] tempSlide = init;
  //for(int i = 0; i <= currentDepth; i++){ //currentdepth
    int checkZero = checkWhereZero(tempSlide);
    int slideDirection = solvedDirection[click];
    tempSlide = slide(checkZero, slideDirection);
    assign_tile(tempSlide);
    println(tempSlide);
    delay(1000);
    
  //}
}