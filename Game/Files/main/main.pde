int mode=1;
int animation=0;
int rect1x=550;
int rect1y=200;
int rect2x=550;
int rect2y=400;
int rectsizeX=500;
int rectsizeY=100;
int fill1=50;
int fill2=50;
int fill3=20;
int writ1=255;
int writ2=255;
int writ3=200;
int counter=0;
int finished=0;
int speed=0;
int x=100;
int y=100;
int z=20;


void setup () {
  frameRate(120);
  size(1600,900);
  
  
}

void draw () {
  background (0);
  if (mode==0){
    Animation();
  }
  if (mode==1){
    mainmenu(); 
  }
  if (mode==2){
    play();
  }
  
}


void mainmenu() {
  background(100,100,20);
  
  fill(fill1,fill2,fill3);
  rect(rect1x,rect1y,rectsizeX,rectsizeY);
  
  textSize(64);
  fill(writ1,writ2,writ3);
  text("Play", rect1x+200, rect1y+70);
  
  if (mouseX >=rect1x && mouseX<= rect1x+rectsizeX){
    if (mouseY >=rect1y && mouseY <= rect1y+rectsizeY){
      if(mousePressed && mouseButton==LEFT){
         mode=0;
         animation=1;
         counter=0;
      }
      
      
    }
  }
  
  fill(fill1,fill2,fill3);
  rect(rect2x,rect2y,rectsizeX,rectsizeY);
  
  textSize(64);
  fill(writ1,writ2,writ3);
  text("All champions", rect2x+40, rect2y+70);
  
  if (mouseX >=rect2x && mouseX<= rect2x+rectsizeX){
    if (mouseY >=rect2y && mouseY <= rect2y+rectsizeY){
      if(mousePressed && mouseButton == LEFT){
         mode=0;
         animation=2;
         counter=0;
      }
      
      
    }
  }
  
  
}

void Animation(){
  
  if (animation==1){
    counter=counter+1;
    rect1x=rect1x+speed;
    rect2x=rect2x-speed;
    speed=speed+2;
    x=x-5;
    y=y-5;
    z=z-1;
    
    background(x,y,z);
    fill(fill1,fill2,fill3);
    rect(rect1x,rect1y,rectsizeX,rectsizeY);
  
    textSize(64);
    fill(writ1,writ2,writ3);
    text("Play", rect1x+200, rect1y+70);
    
    fill(fill1,fill2,fill3);
    rect(rect2x,rect2y,rectsizeX,rectsizeY);
  
    textSize(64);
    fill(writ1,writ2,writ3);
    text("All champions", rect2x+40, rect2y+70);
    
    if(counter==100){
      finished=1;
    }
    
    
  }
  
  if (animation==2){
    counter=counter+1;
    rect1x=rect1x+speed;
    rect2x=rect2x-speed;
    speed=speed+2;
    x=x-5;
    y=y-5;
    z=z-1;
    
    background(x,y,z);
    fill(fill1,fill2,fill3);
    rect(rect1x,rect1y,rectsizeX,rectsizeY);
  
    textSize(64);
    fill(writ1,writ2,writ3);
    text("Play", rect1x+200, rect1y+70);
    
    fill(fill1,fill2,fill3);
    rect(rect2x,rect2y,rectsizeX,rectsizeY);
  
    textSize(64);
    fill(writ1,writ2,writ3);
    text("All champions", rect2x+40, rect2y+70);
    
    if(counter==100){
      finished=1;
    }
    
    
  }
  
  
  if (finished==1){
    mode=animation+1;
    animation=0;
    counter=0;
    finished=0;
  }
}



void play() {
  
  
  
}

void Champions() {
  
  
  
  
}


void attack(){
  
  
  
}
