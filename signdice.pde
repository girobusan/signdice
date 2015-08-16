import processing.sound.*;


float overalpha=0;
Thedice Dice;
SoundFile spook;
String[] svgnames = {"water.svg" , "air.svg" , "earth.svg" , "water.svg" , "moon.svg" , "star.svg" };
String[] pngnames = {"water.png" , "air.png" , "earth.png" , "water.png" , "moon.png" , "star.png" };


void setup(){
  size (displayWidth, displayHeight);
  frameRate(30);
  Dice = new Thedice();
  spook = new SoundFile(this, "spooky.mp3");

}

void draw(){
  noStroke();  
  pushMatrix();
  translate(displayWidth/2,displayHeight/2);
  background(#2C334D);
  Dice.draw();
  popMatrix();

  fill(255, 255,255, overalpha);
  noStroke();
  rect(0, 0, displayWidth, displayHeight);  
  if(overalpha>0){
    overalpha = overalpha-5;
    }
}

void mousePressed(){
  if(overalpha>200){
    return;
  }
  overalpha = 255;
  spook.play();
  Dice.toss();
  
}