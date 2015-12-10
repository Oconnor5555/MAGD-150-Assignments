boolean keyPressState = false;
boolean missileFired = false;
boolean zMissileFired = false;
boolean pizzaAlive = true;
float lastTime = 0;


//this is a pizza game sketch
//there is a pizza image in the sketch
//trying to make the pizza movable along the X axis via the mouse
//int pizza projectile;
//int zucchini projectile;
int zuchpos = 350;
//int border = 400, 300, 800, 50;
PImage pizzaship;
PImage zucchiniship;

Missile newMissile;
Zucchini myZuchini;
ZMissile newZMissile;


void setup(){
  size(800, 600);
  background(0, 0, 500); // this make background BLUE
  pizzaship = loadImage("pizzaslice.png");
  zucchiniship = loadImage("zucchini.jpg");
  
  myZuchini = new Zucchini();
  
}

void draw(){
  
  if (keyPressState == false){
    
    
  //first state text (start menu)
  background(0, 0, 500);
  
  fill(500, 0, 0);
  rectMode(CENTER);
  rect(385, height/2, 300, 100);
  fill(0, 0, 0);
  textSize(50);
  text("Pizza Panic", 250, 300);
  
  textSize(30);
  text("press any key", 280, 340);
  image(pizzaship, 335, 90, 100, 200);
  }
  
  if(keyPressState == true){
    
  
  // this second state code
  background(255); // this makes background white
  
    
    
    if(!pizzaAlive){
       println(millis(), lastTime, millis() - lastTime );
       if( millis() - lastTime >= 2000){
       pizzaAlive = true;
       }
      
    } else {
      scale(1, 1);
      image(pizzaship, mouseX-25, 500, 50, 90);
    }


    // checks if myZuchini is "alive", if it's dead disappear for two seconds, otherwise move and display
   if(!myZuchini.alive){
       println(millis(), myZuchini.lastTime, millis() - myZuchini.lastTime );
       if( millis() - myZuchini.lastTime >= 2000){
       myZuchini.alive = true;
       }
    } else {
      myZuchini.update();
      myZuchini.display();
    }
    
    
    
    
  //border
  fill(0, 0, 0);
  rectMode(CENTER);
  rect(400, 300, 800, 5);
  
  if(mousePressed){
    launchMissile();
    missileFired = true;
  }
  
  if(missileFired == true){
    newMissile.update();
    newMissile.display();
    
  // this checks pizza's missile to see if it hits the zucchini, based on their position.  
  if((newMissile.posX > myZuchini.zuchpos +20 ) && (newMissile.posX < myZuchini.zuchpos + 65) && ( newMissile.posY
  < 100) && ( newMissile.posY
  > 55))
  {  
    println("killed zucchini!");
    myZuchini.alive = false;
    myZuchini.lastTime = millis();
  }
  }

  if(zMissileFired == true){
    newZMissile.update();
    newZMissile.display();
    
  if((newZMissile.posX > mouseX -20 ) && (newZMissile.posX < mouseX + 20) && ( newZMissile.posY > 500) && ( newZMissile.posY > 515))
  {  
    println("killed pizza!");
    lastTime = millis();
    pizzaAlive = false;
    
  }
  }  
  }
}


void launchMissile(){
  newMissile = new Missile();
} 


//NEW TAB

void keyPressed(){
  keyPressState = !keyPressState;
  
  
  
  //background(0, 0, 500);
  
  
  /*
  //if keyPressed=false
  //first state text (start menu)
  fill(500, 0, 0);
  rectMode(CENTER);
  rect(385, height/2, 300, 100);
  fill(0, 0, 0);
  textSize(50);
  text("Pizza Panic", 250, 300);
  
  textSize(30);
  text("press any key", 280, 340);
  image(pizzaship, 335, 90, 100, 200);
  
  */
}


//NEW TAB

class ZMissile{
  float posX, posY, velocityY;
  
  ZMissile() {
    posX = myZuchini.zuchpos + 10;
    posY = 100;
    velocityY = 5;
  }
  
  void update(){
    posY = posY + velocityY;
    if(posY >= height){
      zMissileFired = false;
    }
  }
  
  void display(){
    rectMode(CENTER);
    fill(0,255,0);
    rect(posX, posY, 10, 20);
  }
}


//NEW TAB

class Missile{
  float posX, posY, velocityY;
  
  Missile() {
    posX = mouseX;
    posY = 500;
    velocityY = -5;
  }
  
  void update(){
    posY = posY + velocityY;
  }
  
  void display(){
    rectMode(CENTER);
    fill(255,0,0);
    rect(posX, posY, 10, 20);
  }
}


//NEW TAB

class Pizza{
  
  
  
  
  
  
  
  
  
}


class Zucchini{
  float zuchpos ;
  float zVelocity;
  float lastTime;
  boolean alive;
  float timeNow;
  
  Zucchini(){
    zuchpos = 350;
    zVelocity = 5; 
    lastTime = 0;
    alive = true;
  }
  
  void update(){
    if(zuchpos + 90 >= width)
    {
      zVelocity = zVelocity * -1;
    }
    if(zuchpos - 20 <= 0) {
      zVelocity = zVelocity * -1;
    }
    zuchpos = zuchpos + zVelocity;
    
    
    if( millis() - lastTime >= 1000){
      //println("firing missile");
      fireZMissile();
      //lastTime = millis();
      
    }
    //println(millis() - lastTime);
    //println(lastTime);
  }
  
  void display(){
  scale(1, 1);
  image(zucchiniship, zuchpos, 0, 90, 100);
  }
  
  void fireZMissile(){
    if (zMissileFired == false){
    zMissileFired = true;
    newZMissile = new ZMissile();
  }
}
}
