//Global Variables
float quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight;
color red=#FF3903, green=#0EFF03, resetButtonColor=#FFFFFF, buttonFill; //Not night mode friendly colors
//
void setup() {
  size (500, 500);
  //
  //Population
  int centerX = width/2;
  int centerY = height/2;
  int centeringButtonWidth = width*1/4;
  int centeringButtonHeight = height*1/4;
  quitButtonX = centerX - centeringButtonWidth;
  quitButtonY = centerY - centeringButtonHeight;
  quitButtonWidth = centerX;
  quitButtonHeight = centerY;
  //
}//End setup
//
void draw() {
  //Hover-over
  if (mouseX> quitButtonX && mouseX< quitButtonX+quitButtonWidth && mouseY> quitButtonY && mouseY< quitButtonY+quitButtonHeight) {
  buttonFill = green;} else {
  buttonFill = red;
  }//End Hover-over
  fill(buttonFill); //2-colors to start , remember nightMode adds choice
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
  fill(resetButtonColor);
  //
  //Repeating CONSOLE values illustrating mouseX and mouseY related to a formula, mouse buttons
  //println("X-value", quitButtonX, "\t", mouseX, "\t", quitButtonX+quitButtonWidth, "\t\t Look at the middle value");
  //println("Y-value", quitButtonY, "\t", mouseY, "\t", quitButtonY+quitButtonHeight, "\t\t Look at the middle value");
  //
}//End draw
//
void keyPressed() {
  if (key=='q' || key=='Q') exit();
}//End keyPressed
//
void mousePressed() {
  if (mouseX> quitButtonX && mouseX< quitButtonX+quitButtonWidth && mouseY> quitButtonY && mouseY< quitButtonY+quitButtonHeight) exit();
}//End mousePressed
//
//End MAIN Program
