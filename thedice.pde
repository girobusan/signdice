class Thedice {
  PShape s;
  PShape[] signz = new PShape[6];
  PImage[] bsignz = new PImage[6];
  Boolean use_svg = false;
  int curindex;
  
  Thedice(){

    for (int j = 0; j < svgnames.length ; j++){ 
       
      signz[j] = loadShape(svgnames[j]);
      signz[j].disableStyle();      
      signz[j].scale(0.5);
      //png
      bsignz[j] = loadImage(pngnames[j]);
      }

    curindex=-1;
  }
  
  void toss(){    
    curindex= int( random(0,6) );    
  }
  
  void draw(){
    fill(255); 
    if (curindex==-1){          
      textSize(displayHeight/20);
      textAlign(CENTER,CENTER);
      text("Tap to start" , 0, 0);
    }else{
      if(!use_svg){
        imageMode(CENTER);
        tint(255, 255-overalpha);
        image(bsignz[curindex], -2+int(random(2)), -2+int(random(2)), 250,250);
      }else{
        shapeMode(CENTER);
        fill(255, 255-overalpha);
        shape(signz[curindex], -125+int(random(2)), -125+int(random(2)));  
      }
  
    }
  }
  
  
}