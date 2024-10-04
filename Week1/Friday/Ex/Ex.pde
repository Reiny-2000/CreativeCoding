//void setup() 
//{
//  size(400, 300);
//  fill(203, 118, 122);
//}
 
//void draw()
//{
//  background(255, 236, 149);
 
//  if (mouseX < width/3)
//  {
//    triangle(mouseX, mouseY, mouseX, 100, 100, 100);
//  }
//  else if (mouseX < width/2)
//  {
//    ellipse(mouseX, mouseY, 80, 80);
//  }
//  else
//  {
//    rect(mouseX, mouseY, 80, 80);
//  }
//}

//float xPos;     // Position of text along x-axis
//float vx;       // Speed of text in x-direction
//String message; // The message
 
//void setup()
//{
//  size(600, 100);
//  fill(255, 177, 8);
//  textSize(48);
 
//  xPos = width;  // Initialise xPos to right of sketch
//  vx = -2;       // Set speed in x-direction to -2 (moving left)
//  message = "The next station is Victoria...";
//}
 
//void draw()
//{
//  background(64);
 
//  xPos = xPos + vx;  // Change x-position on each redraw
//  text(message, xPos, (height/2) + 20);
//  if (xPos < -textWidth(message))
//  {
//    xPos = width;
//  }
  
//}

//void setup()
//{
//  size(400, 300);
//}
 
//void draw()
//{
//  background(18, 48, 193);
 
//  if (mouseY < height/2)
//  {
//    if (mouseX < width/2)
//    {
//      fill(250, 207, 35);  // colour for sun
//    } 
//    else
//    {
//      fill(255, 255, 255);  // colour for moon
//    }
//    ellipse(mouseX, mouseY, 80, 80);
//  } 
//  else
//  {
//    fill(50, 150, 15);  // colour for ground
//    rect(mouseX, mouseY, 100, 80);
//  }
//}



//float randomNumber;
 
//void setup()
//{
//  size(200, 200);
//  fill(0);
//  textSize(48);
//  textAlign(CENTER);
 
//  // Initialise randomNumber between 0 and 2

//}
 
//void draw()
//{
//  background(230, 255, 230);
//  randomNumber = random(2);
//  println(randomNumber);
 
//  String message1;
//  String message2;
// if (randomNumber <= 1)
// {
//   message1 = "TAILS";
 
//  text(message1, width/2, height/2);
   
   
// }
// else
// {
//   message2 = "HEADS";
//   text(message2,width/2,height/2);
// }
//}



//float ran;
 
//void setup()
//{
//  size(200, 200);
//  fill(0);
//  textSize(48);
//  textAlign(CENTER);
 
//  ran = random(6);
//}
 
//void draw()
//{
//  background(255);
//  String message="";
 
//  if (ran <= 1){
//    message = "ONE";
//  }
//  else if (ran < 2){
//    message = "TWO";
//  }
//  else if (ran < 3){
//    message = "THREE";
//  }
//  else if (ran < 4)
//  {
//    message = "FOUR";
//  }
//  else if (ran < 5){
//    message = "FIVE";
//  }
//  else{
//    message = "SIX";
//  }
//  text(message, width/2, height/2);
//}
float yPosition; // -- Vertical starting position on'y' axis in coordinate space
float xPosition;  // -- Horizontal starting position on 'x' axis in coordinate space
float xVelocity; // -- Horizontal speed in x-direction
float yVelocity; // --Vertical speed in y-direction
float radius; // --Radius of ball
boolean playable = false;
float lineX = 0;
float lineY = 0;

 
void setup()
{
  size(400,300);
  fill(255,177,8);
  textSize(48);
 
  xPosition = width/2;  // -- Initialise xPosition to centre of sketch
  xVelocity = 0 ; // -- Initialise speed in x-direction to stationary
  yVelocity = 0; // -- Initialise speed in y-direction to stationary
  yPosition = height/2; //--Initialise yPosition to centre of sketch
  radius = 10; // Radius of ball
  
  
  

}



void draw()
{
  background(64);
  stroke(0);
  line(xPosition,yPosition,mouseX,mouseY);
  noStroke();
  fill(0,0,255);
  circle(xPosition,yPosition, 2*radius);
  
  if (mousePressed == true)
  {
   lineX = mouseX;
   lineY = mouseY;
   println(lineX,lineY);
   
   xVelocity = xVelocity + 0.01*(lineX-xPosition);
   yVelocity = yVelocity + 0.01*(lineY-yPosition);
   
   playable = true;
  }
  
  
  if (playable == true)
    {
      xPosition = xPosition + xVelocity;  // -- Change position in x on each redraw by velocity in x
      yPosition = yPosition + yVelocity; //--Change position in y on each redraw by velocity in y
   
        if ((xPosition - radius) <= 0 || (xPosition + radius) >= width)
        {
          xVelocity = -(xVelocity);
        }
        
        if ((yPosition - radius) <= 0 || (yPosition + radius) >= height)
        {
          yVelocity = -(yVelocity);
        }
    }
  
}


  
