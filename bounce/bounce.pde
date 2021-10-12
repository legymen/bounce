float xpos = 300;
float xspeed = 12;

void setup() {
  size(600, 600);
}

void draw() {
  background(50);

  ellipse(xpos, 300, 50, 50);

  xpos = xpos + xspeed;

  if (xpos > width || xpos < 0) {
    xspeed = (-1)*xspeed;
  }
}
