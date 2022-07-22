//Global Variables
float faceX, faceY, faceWidth, faceHeight, centerX, centerY, smallerDimension, eyeLX, eyeDiameter, eyeDiameterY, eyeRX, eyeY;
float pupilRX, pupilLX,pupilY, pupilDiameter, pupilDiameterY, mouthX, mouthY, mouthWidth, mouthHeight;
float x1, y1, x2, y2, x3, y3 ;
float measleX, measleY, measleDiameter, faceRadius, divX, divY, divWidth,divHeight;
float btnX, btnX1, btnY, btnHeight, btnWidth, btnWidth1, btnHeight1; 
color btnFill, resetDefaultColour, btnFill1;
color defaultColor = #FFFFFF, faceColor;
Boolean rectON=false, ellipseON=false;

//
void setup() {
  size(700, 600);
  
  //Population
  centerX = width/2;
  centerY = height/2;
  faceX = centerX;
  faceY = centerY;
  if (width >= height) {
    smallerDimension = height;
  } else { 
    smallerDimension = width;
  }
  
  faceWidth = smallerDimension;
  faceHeight = smallerDimension;
  eyeLX = width/3;  
  eyeRX = width - width/3;
  eyeY = height/3;
  eyeDiameter = smallerDimension/9;
  eyeDiameterY = smallerDimension/5;
  
  pupilRX = width/3;
  pupilLX = width - width/3;
  pupilY = height/3 + height/19;
  pupilDiameter = smallerDimension/12;
  pupilDiameterY = smallerDimension/10;
  
  mouthX = centerX;
  mouthY = centerY*3/2;
  mouthWidth = width/3;
  mouthHeight = height/5;
  x1 = centerX;
  y1 = centerY - smallerDimension/10;
  x2 = centerX - smallerDimension/20;
  y2 = centerY + smallerDimension/20;
  x3 = centerX + smallerDimension/20;
  y3 = y2;
  
  faceRadius = smallerDimension/2;
  divX = 0;
  divY = height-height/5;
  divWidth = width;
  divHeight = height/2;
  
  //int centerX = width/2;
  //int centerY = height/2;
  //int btnCenterX = width*1/4;  
  //int btnCenterY = height*1/4;

  btnX1 = width/6;
  btnX = width*5/9;
  btnY = height - height/7;
  btnHeight = height/10;
  btnWidth = width/4;
  btnWidth1 = width/4;
  btnHeight1 = height/10;
  
  faceColor = #3AA713;
 

  
  fill(faceColor);
  noStroke();
  ellipse(faceX, faceY, faceWidth, faceHeight);
  fill(defaultColor);
  
  
} //End setup()
//
void draw() {
  fill(#134801);
  ellipse(eyeLX, eyeY, eyeDiameter, eyeDiameterY);
  ellipse(eyeRX, eyeY, eyeDiameter, eyeDiameterY);
  fill(#FFFFFF);
  ellipse(pupilLX, pupilY, pupilDiameter, pupilDiameterY);
  ellipse(pupilRX, pupilY, pupilDiameter, pupilDiameterY);
  triangle(x1, y1, x2, y2, x3, y3);
  fill(#112908);
  arc(mouthX, mouthY, mouthWidth, mouthHeight, PI, TWO_PI);
  fill(defaultColor);
  
  if ( rectON==true ) {
 
  //measleX, measleY, measleDiameter
    measleX = random(centerX-faceRadius, centerX+faceRadius);
    measleY = random(smallerDimension);
    fill(random(50, 255), random(0, 50), random(0, 50));
    measleDiameter = random(smallerDimension/75, smallerDimension/25);
    ellipse(measleX, measleY, measleDiameter, measleDiameter);
  } //Button 1
  fill(defaultColor);
rect(divX, divY, divWidth,divHeight);
  
    if ( mouseX > btnX && mouseX < btnX+btnWidth && mouseY > btnY && mouseY < btnY+btnHeight) {
  btnFill = #AA1515 ;
  } else {
  btnFill = #171FAF;
  }
     if ( mouseX > btnX1 && mouseX < btnX1+btnWidth1 && mouseY > btnY && mouseY < btnY+btnHeight1) {
  btnFill1 = #319815 ;
  } else {
  btnFill1 = #981587;
  }
  fill(btnFill); //Must Have HoverOver and NightMode for Good Marks
  rect(btnX, btnY, btnWidth, btnHeight);
  fill(btnFill1);
  rect(btnX1, btnY, btnWidth1, btnHeight1);
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(buttonFont, 25); //Change the number until it fits, largest font size
  //
  //Specific Text per button
  text(buttonText1, buttonX1, buttonY1, buttonWidth1, buttonHeight1);
  


} //End draw()
//
void keyPressed() {} //End keyPressed()
//
void mousePressed() {
if ( mouseX > btnX1 && mouseX < btnX1+btnWidth1 && mouseY > btnY && mouseY < btnY+btnHeight1) rectON=true;
} //End mousePressed()
//
//END MAIN
