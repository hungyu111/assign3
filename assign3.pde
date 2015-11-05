final int GAME_START=1,GAME_RUN1=2,GAME_RUN2=3,GAME_RUN3=4;
int gameState;
PImage ship;
PImage hp;
PImage trea;
PImage eny;
PImage bg1,bg2,start2,start1,end1,end2;
int tx;
float x,y,xx,yy;
float speed=6;
int ty;
float ex, ey,ntx,nty,nex,ney;
float health,r;
int bg1x,bg2x;
float t;
float ey2;

boolean upPressed=false;
boolean downPressed=false;
boolean leftPressed=false;
boolean rightPressed=false;
boolean treasureRe=false;

void setup () {
  size(640, 480) ;
  gameState=GAME_START;
  ship=loadImage("img/fighter.png");
  hp=loadImage("img/hp.png");
  trea=loadImage("img/treasure.png");
  eny=loadImage("img/enemy.png");
  bg1=loadImage("img/bg1.png");
  bg2=loadImage("img/bg2.png"); 
  start2=loadImage("img/start2.png"); 
  start1=loadImage("img/start1.png"); 
  end1=loadImage("img/end1.png"); 
  end2=loadImage("img/end2.png"); 
  bg1x=640;
  bg2x=0;

  
  health=40;
  x=580;
  y=240;
  
  tx=floor(random(40,600));
  ty=floor(random(40,400));
  
  
  image(bg1,bg1x-640,0);
  
  
  ey=floor(random(400));
  
  t=0;
  ex=0;
  
}

void draw() {
  switch (gameState){  
case GAME_START:
   image(start2,0,0);
   if(mouseX>200 && mouseX<460 && mouseY>380 && mouseY<430){
     if(mousePressed){
   gameState=GAME_RUN1;
  }
  else{
    image(start1,0,0);
   
   }
   }
    


break;

case GAME_RUN1:

  
  image(bg1,bg1x-640,0);
  image(bg2,bg2x-640,0);
  bg1x++;
  bg2x++;
  bg1x%=1280;
  bg2x%=1280;
 
  image(trea,tx,ty);
  fill(255,0,0);
  rectMode(CORNER);
  rect(11,10,health,20);
  
  image(hp,1,8);
  image(ship,x,y);
  if(upPressed){
    y-=speed;
  }
  if(downPressed){
    y+=speed;
  }
  if(rightPressed){
    x+=speed;
  }
  if(leftPressed){
    x-=speed;
  }
  if(x>589){
    x=589;
  }
  if(x<0){
  x=0;
  }
  if(y>429){
  y=429;
  }
  if(y<0){
  y=0;
  }
  if(x+50>tx&&x<tx+40&&y+50>ty&&y<ty+40){
  
    image(trea,ntx,nty);
    ntx=tx;nty=ty;
    if(health<195){
    health+=20;
     
  
  }
  tx=floor(random(40,600));
     ty=floor(random(40,400));
  }
  
  
  for(int i=0;i<5;i++){
  image(eny,ex-i*60,ey);
  }
  ex+=4;
  ex%=880;
  t++;
  if(t%60==0){xx=x;yy=y;} 
   // ey+=(y-ey)/25;
      
 
  
  
  
  
  
   
  
 
  
  
  
  
  if(ex%880==0){
    ey=floor(random(200,400));
    gameState=GAME_RUN2;
  }

  
break;

case GAME_RUN2:

  image(bg1,bg1x-640,0);
  image(bg2,bg2x-640,0);
  bg1x++;
  bg2x++;
  bg1x%=1280;
  bg2x%=1280;
 
  image(trea,tx,ty);
  fill(255,0,0);
  rectMode(CORNER);
  rect(11,10,health,20);
  
  image(hp,1,8);
  image(ship,x,y);
  if(upPressed){
    y-=speed;
  }
  if(downPressed){
    y+=speed;
  }
  if(rightPressed){
    x+=speed;
  }
  if(leftPressed){
    x-=speed;
  }
  if(x>589){
    x=589;
  }
  if(x<0){
  x=0;
  }
  if(y>429){
  y=429;
  }
  if(y<0){
  y=0;
  }
  if(x+50>tx&&x<tx+40&&y+50>ty&&y<ty+40){
  
    image(trea,ntx,nty);
    ntx=tx;nty=ty;
    if(health<195){
    health+=20;
     
  
  }
  tx=floor(random(40,600));
     ty=floor(random(40,400));
  }
  if(ey<200){
  ey=400;
  
  }
  if(ex==0){
  ey=floor(random(200,400));
  
  }
  for(int i=0;i<5;i++){
  image(eny,ex-i*60,ey-i*40);
  }
  ex+=4;
  ex%=880;
  
  
  
  if(ex%880==0){
    ey=floor(random(200,380));
    gameState=GAME_RUN3;
  }
break;

case GAME_RUN3:

image(bg1,bg1x-640,0);
  image(bg2,bg2x-640,0);
  bg1x++;
  bg2x++;
  bg1x%=1280;
  bg2x%=1280;
 
  image(trea,tx,ty);
  fill(255,0,0);
  rectMode(CORNER);
  rect(11,10,health,20);
  
  image(hp,1,8);
  image(ship,x,y);
  if(upPressed){
    y-=speed;
  }
  if(downPressed){
    y+=speed;
  }
  if(rightPressed){
    x+=speed;
  }
  if(leftPressed){
    x-=speed;
  }
  if(x>589){
    x=589;
  }
  if(x<0){
  x=0;
  }
  if(y>429){
  y=429;
  }
  if(y<0){
  y=0;
  }
  if(x+50>tx&&x<tx+40&&y+50>ty&&y<ty+40){
  
    image(trea,ntx,nty);
    ntx=tx;nty=ty;
    if(health<195){
    health+=20;
     
  
  }
  tx=floor(random(40,600));
     ty=floor(random(40,400));
  }
  
  
  ex+=4;
  for(int i=0;i<3;i++){
  image(eny,ex-i*40,ey-i*40);
  image(eny,ex-i*40,ey+i*40);
  image(eny,ex-i*40-80,ey+i*40-80);
  image(eny,ex-i*40-80,ey-i*40+80);
  
  
  }
  
  
  
   
  
  if(ex%880==0){
  gameState=GAME_RUN1;
 
  }


  }


  

}

    
  

void keyPressed(){
  if (key==CODED){
    switch(keyCode){
    case UP:
    upPressed=true;
    break;
    case DOWN:
    downPressed=true;
    break;
    case LEFT:
    leftPressed=true;
    break;
    case RIGHT:
    rightPressed=true;
    break;
    
    }
  }
}
void keyReleased(){
if (key==CODED){
    switch(keyCode){
    case UP:
    upPressed=false;
    break;
    case DOWN:
    downPressed=false;
    break;
    case LEFT:
    leftPressed=false;
    break;
    case RIGHT:
    rightPressed=false;
    break;
    }
}
}
