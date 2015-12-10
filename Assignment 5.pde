int lineY= 600;
int posX = 400;
float posY = 10;
int ballDiameter = -100;
float velocityY = 0.0;
float gravity = 1.5;
boolean onGround= false;
float jumpsize = -60;

void setup(){
  size(800, 800);
}

void draw(){
  background(247, 183, 97);
  line(0, lineY, width, lineY);
  update();
}

void update(){
  velocityY = gravity + velocityY;
  posY = velocityY + posY;
  if (posY + (ballDiameter/-2.5) >= (lineY)){
    posY = (lineY) - (ballDiameter/-2.5);
    onGround = true;
  } else {
    onGround = false;
  }
  for (int x = 1; x < 10; x++){
    
    //basketball text
    fill(2, 135, 240);
    textSize(50);
    text("BASKETBALL!", 245, 100);
    
    //hoop stand
    fill(96, 129, 245);
    rectMode(CENTER);
    rect(400, 700, 1000, 200);
    
    fill(144, 138, 137);
    rectMode(CENTER);
    rect(400, 400, 50, 400);
    
    fill(500, 500, 500);
    rectMode(CENTER);
    rect(400, 270, 170, 100);
    
    fill(500, 500, 500);
    rectMode(CENTER);
    rect(400, 270, 170, 100);
    
    fill(242, 120, 27);
    rectMode(CENTER);
    rect(400, 270, 110, 10);
    
    //ball
    fill(250, 147, 13);
    ellipse(posX, posY, ballDiameter+ (x*20), ballDiameter + (x*20));
    //hoop
    fill(242, 120, 27);
    rectMode(CENTER);
    rect(400, 270, 110, 10);
    
    
  }
}

void mousePressed(){
  if (onGround){
    jump();
  }
}

void jump(){
  velocityY = jumpsize;
}
