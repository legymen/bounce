float xPos = 300;
float yPos = 200;
float xSpeed = 12;
float ySpeed = 6;

void setup() {
  size(900, 900);
}

void draw() {
  background(50);



  if (xPos > width || xPos < 0) {
    xSpeed = (-1)*xSpeed;
  }
  if (yPos > height || yPos < 0) {
    ySpeed = (-1)*ySpeed;
  }

  xPos = xPos + xSpeed;
  yPos = yPos + ySpeed;
  
    ellipse(xPos, yPos, 50, 50);

}
