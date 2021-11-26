
Ball[] balls;

PVector gravity, wind;

void setup() {
  size(900, 900);

  balls = new Ball[200];

  for (int i = 0; i < balls.length; i++) {
    balls[i] = new Ball();
  }


  gravity = new PVector(0, 2);
  wind = new PVector(-5, -0.5);
}

void draw() {
  background(240);

  for (int i = 0; i < balls.length; i++) {
    balls[i].applyForce(gravity);
    balls[i].applyForce(wind);
    balls[i].run();
  }
}
