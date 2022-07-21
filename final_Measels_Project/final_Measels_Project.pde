//Global Variables
float faceX, faceY, faceWidth, faceHeight, centerX, centerY, smallerDimension, eyeLX, eyeDiameter, eyeDiameterY, eyeRX, eyeY;
float pupilRX, pupilLX,pupilY, pupilDiameter, pupilDiameterY, mouthX, mouthY, mouthWidth, mouthHeight;
float x1, y1, x2, y2, x3, y3 ;
color defaultColor = #FFFFFF;
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
  
  
  
  
  fill(#278907);
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


} //End draw()
//
void keyPressed() {} //End keyPressed()
//
void mousePressed() {} //End mousePressed()
//
//END MAIN
