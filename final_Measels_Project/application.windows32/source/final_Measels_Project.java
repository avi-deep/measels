import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class final_Measels_Project extends PApplet {

//Global Variables
float faceX, faceY, faceWidth, faceHeight, centerX, centerY, smallerDimension, eyeLX, eyeDiameter, eyeDiameterY, eyeRX, eyeY;
float pupilRX, pupilLX,pupilY, pupilDiameter, pupilDiameterY, mouthX, mouthY, mouthWidth, mouthHeight;
float x1, y1, x2, y2, x3, y3 ;
float measleX, measleY, measleDiameter, faceRadius, divX, divY, divWidth,divHeight;
float btnX, btnX1, btnY, btnHeight, btnWidth, btnWidth1, btnHeight1; 
float  textX, textY, textWidth, textHeight, textX1, imgX, imgY, imgWidth, imgHeight ;
PImage hair ;
String text = "Play/Pause", text1="Exit";
PFont buttonFont;
int btnFill, resetDefaultColour, btnFill1;
int defaultColor = 0xffFFFFFF, faceColor;
Boolean rectON=false, ellipseON=false;

//
public void setup() {
  
  
 
  
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
  
  imgX = 0;
  imgY = height*0 - height*1/6;
  imgWidth = width;
  imgHeight = height*4/5;
  
  
  faceWidth = smallerDimension;
  faceHeight = smallerDimension;
  
  faceColor = 0xff3AA713;
  
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
  
  textX = width/6;
  textX1 = width*5/9;
  textY = height - height/9;
  textWidth = width/4;
  textHeight = height/10;
 

  
  fill(faceColor);
  noStroke();
  ellipse(faceX, faceY, faceWidth, faceHeight);
  fill(defaultColor);
  
  buttonFont = createFont ("Tactico", 55);
   hair = loadImage("imgs/hair.png");
   
} //End setup()
//
public void draw() {
  
 
  
  fill(0xff134801);
  ellipse(eyeLX, eyeY, eyeDiameter, eyeDiameterY);
  ellipse(eyeRX, eyeY, eyeDiameter, eyeDiameterY);
  fill(0xffFFFFFF);
  ellipse(pupilLX, pupilY, pupilDiameter, pupilDiameterY);
  ellipse(pupilRX, pupilY, pupilDiameter, pupilDiameterY);
  triangle(x1, y1, x2, y2, x3, y3);
  fill(0xff112908);
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
image(hair, imgX, imgY, imgWidth, imgHeight);
  
    if ( mouseX > btnX && mouseX < btnX+btnWidth && mouseY > btnY && mouseY < btnY+btnHeight) {
  btnFill = 0xffAA1515 ;
  } else {
  btnFill = 0xff171FAF;
  }
     if ( mouseX > btnX1 && mouseX < btnX1+btnWidth1 && mouseY > btnY && mouseY < btnY+btnHeight1) {
  btnFill1 = 0xffEAD911 ;
  } else {
  btnFill1 = 0xff981587;
  }
  fill(btnFill); //Must Have HoverOver and NightMode for Good Marks
  rect(btnX, btnY, btnWidth, btnHeight);
  fill(btnFill1);
  rect(btnX1, btnY, btnWidth1, btnHeight1);
  
    
  //BTN TEXT
  textAlign(CENTER);
  fill(0xffFFFFFF);
  textFont(buttonFont, 25);
  text(text, textX, textY, textWidth, textHeight);
  text(text1, textX1, textY, textWidth, textHeight);
  


} //End draw()
//
public void keyPressed() {} //End keyPressed()
//
public void mousePressed() {
 //rectON =false;
if ( mouseX > btnX1 && mouseX < btnX1+btnWidth1 && mouseY > btnY && mouseY < btnY+btnHeight1)   {
 if ( rectON==false ) {
      rectON=true;
    } else {
      rectON=false;
    }
}


if ( mouseX > btnX && mouseX < btnX+btnWidth && mouseY > btnY && mouseY < btnY+btnHeight)   exit();


}


//End mousePressed()
//
//END MAIN
  public void settings() {  size(700, 600); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "final_Measels_Project" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
