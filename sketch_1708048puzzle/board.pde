//font
PFont font1;
PFont font2;

//board parameter
int x0 = 100, x1 = 300, x2 = 500, y0 = 100, y1 = 300, y2 = 500;
int t1x = 100, t2x = 300, t3x = 500, t4x = 100, t5x = 300, t6x = 500, t7x = 100, t8x = 300, t0x = 500;
int t1y = 100, t2y = 100, t3y = 100, t4y = 300, t5y = 300, t6y = 300, t7y = 500, t8y = 500, t0y = 500;
int tsize = 200;

final static int fs1 = 120, fs2 = 40, fs3 = 38; //80

void font_setup() {
  font1 = loadFont("Century-48.vlw");
  font2 = loadFont("ArialMT-48.vlw");
  //textFont(font);
}

void tile1() {
  stroke(0);
  fill(255);
  rect(t1x, t1y, 200, 200);
  fill(0, 0, 255);
  textFont(font1, fs1);
  text("1", t1x+70, t1y+130);
}

void tile2() {
  stroke(0);
  fill(255);
  rect(t2x, t2y, 200, 200);
  fill(0, 0, 255);
  textFont(font1, fs1);
  text("2", t2x+70, t2y+130);
}

void tile3() {
  stroke(0);
  fill(255);
  rect(t3x, t3y, 200, 200);
  fill(0, 0, 255);
  textFont(font1, fs1);
  text("3", t3x+70, t3y+130);
}

void tile4() {
  stroke(0);
  fill(255);
  rect(t4x, t4y, 200, 200);
  fill(204, 0, 0);
  textFont(font1, fs1);
  text("4", t4x+70, t4y+130);
}

void tile5() {
  stroke(0);
  fill(255);
  rect(t5x, t5y, 200, 200);
  fill(204, 0, 0);
  textFont(font1, fs1);
  text("5", t5x+70, t5y+130);
}

void tile6() {
  stroke(0);
  fill(255);
  rect(t6x, t6y, 200, 200);
  fill(204, 0, 0);
  textFont(font1, fs1);
  text("6", t6x+70, t6y+130);
}

void tile7() {
  stroke(0);
  fill(255);
  rect(t7x, t7y, 200, 200);
  fill(204, 204, 0);
  textFont(font1, fs1);
  text("7", t7x+70, t7y+130);
}

void tile8() {
  stroke(0);
  fill(255);
  rect(t8x, t8y, 200, 200);
  fill(204, 204, 0);
  textFont(font1, fs1);
  text("8", t8x+70, t8y+130);
}

void tile0() {
  stroke(0);
  fill(255);
  rect(t0x, t0y, 200, 200);
}

void assign_tile(int []sequence) {
  //0
  if (sequence[0]==0) {
    t0x = x0; 
    t0y = y0;
  } else if (sequence[0]==1) {
    t1x = x0; 
    t1y = y0;
  } else if (sequence[0]==2) {
    t2x = x0; 
    t2y = y0;
  } else if (sequence[0]==3) {
    t3x = x0; 
    t3y = y0;
  } else if (sequence[0]==4) {
    t4x = x0; 
    t4y = y0;
  } else if (sequence[0]==5) {
    t5x = x0; 
    t5y = y0;
  } else if (sequence[0]==6) {
    t6x = x0; 
    t6y = y0;
  } else if (sequence[0]==7) {
    t7x = x0; 
    t7y = y0;
  } else if (sequence[0]==8) {
    t8x = x0; 
    t8y = y0;
  }
  //1
  if (sequence[1]==0) {
    t0x = x1; 
    t0y = y0;
  } else if (sequence[1]==1) {
    t1x = x1; 
    t1y = y0;
  } else if (sequence[1]==2) {
    t2x = x1; 
    t2y = y0;
  } else if (sequence[1]==3) {
    t3x = x1; 
    t3y = y0;
  } else if (sequence[1]==4) {
    t4x = x1; 
    t4y = y0;
  } else if (sequence[1]==5) {
    t5x = x1; 
    t5y = y0;
  } else if (sequence[1]==6) {
    t6x = x1; 
    t6y = y0;
  } else if (sequence[1]==7) {
    t7x = x1; 
    t7y = y0;
  } else if (sequence[1]==8) {
    t8x = x1; 
    t8y = y0;
  }
  //2
  if (sequence[2]==0) {
    t0x = x2; 
    t0y = y0;
  } else if (sequence[2]==1) {
    t1x = x2; 
    t1y = y0;
  } else if (sequence[2]==2) {
    t2x = x2; 
    t2y = y0;
  } else if (sequence[2]==3) {
    t3x = x2; 
    t3y = y0;
  } else if (sequence[2]==4) {
    t4x = x2; 
    t4y = y0;
  } else if (sequence[2]==5) {
    t5x = x2; 
    t5y = y0;
  } else if (sequence[2]==6) {
    t6x = x2; 
    t6y = y0;
  } else if (sequence[2]==7) {
    t7x = x2; 
    t7y = y0;
  } else if (sequence[2]==8) {
    t8x = x2; 
    t8y = y0;
  }
  //3
  if (sequence[3]==0) {
    t0x = x0; 
    t0y = y1;
  } else if (sequence[3]==1) {
    t1x = x0; 
    t1y = y1;
  } else if (sequence[3]==2) {
    t2x = x0; 
    t2y = y1;
  } else if (sequence[3]==3) {
    t3x = x0; 
    t3y = y1;
  } else if (sequence[3]==4) {
    t4x = x0; 
    t4y = y1;
  } else if (sequence[3]==5) {
    t5x = x0; 
    t5y = y1;
  } else if (sequence[3]==6) {
    t6x = x0; 
    t6y = y1;
  } else if (sequence[3]==7) {
    t7x = x0; 
    t7y = y1;
  } else if (sequence[3]==8) {
    t8x = x0; 
    t8y = y1;
  }
  //4
  if (sequence[4]==0) {
    t0x = x1; 
    t0y = y1;
  } else if (sequence[4]==1) {
    t1x = x1; 
    t1y = y1;
  } else if (sequence[4]==2) {
    t2x = x1; 
    t2y = y1;
  } else if (sequence[4]==3) {
    t3x = x1; 
    t3y = y1;
  } else if (sequence[4]==4) {
    t4x = x1; 
    t4y = y1;
  } else if (sequence[4]==5) {
    t5x = x1; 
    t5y = y1;
  } else if (sequence[4]==6) {
    t6x = x1; 
    t6y = y1;
  } else if (sequence[4]==7) {
    t7x = x1; 
    t7y = y1;
  } else if (sequence[4]==8) {
    t8x = x1; 
    t8y = y1;
  }
  //5
  if (sequence[5]==0) {
    t0x = x2; 
    t0y = y1;
  } else if (sequence[5]==1) {
    t1x = x2; 
    t1y = y1;
  } else if (sequence[5]==2) {
    t2x = x2; 
    t2y = y1;
  } else if (sequence[5]==3) {
    t3x = x2; 
    t3y = y1;
  } else if (sequence[5]==4) {
    t4x = x2; 
    t4y = y1;
  } else if (sequence[5]==5) {
    t5x = x2; 
    t5y = y1;
  } else if (sequence[5]==6) {
    t6x = x2; 
    t6y = y1;
  } else if (sequence[5]==7) {
    t7x = x2; 
    t7y = y1;
  } else if (sequence[5]==8) {
    t8x = x2; 
    t8y = y1;
  }
  //6
  if (sequence[6]==0) {
    t0x = x0; 
    t0y = y2;
  } else if (sequence[6]==1) {
    t1x = x0; 
    t1y = y2;
  } else if (sequence[6]==2) {
    t2x = x0; 
    t2y = y2;
  } else if (sequence[6]==3) {
    t3x = x0; 
    t3y = y2;
  } else if (sequence[6]==4) {
    t4x = x0; 
    t4y = y2;
  } else if (sequence[6]==5) {
    t5x = x0; 
    t5y = y2;
  } else if (sequence[6]==6) {
    t6x = x0; 
    t6y = y2;
  } else if (sequence[6]==7) {
    t7x = x0; 
    t7y = y2;
  } else if (sequence[6]==8) {
    t8x = x0; 
    t8y = y2;
  }
  //7
  if (sequence[7]==0) {
    t0x = x1; 
    t0y = y2;
  } else if (sequence[7]==1) {
    t1x = x1; 
    t1y = y2;
  } else if (sequence[7]==2) {
    t2x = x1; 
    t2y = y2;
  } else if (sequence[7]==3) {
    t3x = x1; 
    t3y = y2;
  } else if (sequence[7]==4) {
    t4x = x1; 
    t4y = y2;
  } else if (sequence[7]==5) {
    t5x = x1; 
    t5y = y2;
  } else if (sequence[7]==6) {
    t6x = x1; 
    t6y = y2;
  } else if (sequence[7]==7) {
    t7x = x1; 
    t7y = y2;
  } else if (sequence[7]==8) {
    t8x = x1; 
    t8y = y2;
  }
  //8
  if (sequence[8]==0) {
    t0x = x2; 
    t0y = y2;
  } else if (sequence[8]==1) {
    t1x = x2; 
    t1y = y2;
  } else if (sequence[8]==2) {
    t2x = x2; 
    t2y = y2;
  } else if (sequence[8]==3) {
    t3x = x2; 
    t3y = y2;
  } else if (sequence[8]==4) {
    t4x = x2; 
    t4y = y2;
  } else if (sequence[8]==5) {
    t5x = x2; 
    t5y = y2;
  } else if (sequence[8]==6) {
    t6x = x2; 
    t6y = y2;
  } else if (sequence[8]==7) {
    t7x = x2; 
    t7y = y2;
  } else if (sequence[8]==8) {
    t8x = x2; 
    t8y = y2;
  }
}
void board() {
  tile0();
  tile1();
  tile2();
  tile3();
  tile4();
  tile5();
  tile6();
  tile7();
  tile8();
}

void instruction() {
  if (modeDemo == false) {
    //stroke(255);
    fill(160, 160, 160);
    rect(x2+250, y0+90, 400, 200);
    fill(255);
    textFont(font2, fs2);
    text("ENTER to set puzzle", x2+270, y0+200);
  } else {
    //stroke(255);
    fill(160, 160, 160);
    rect(x2+250, y0+90, 400, 200);
    fill(255);
    textFont(font2, fs3);
    text("click J to show answer", x2+270, y0+200);
  }
}