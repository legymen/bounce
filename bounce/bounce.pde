Ball ball1;
Ball ball2;

void setup() {
  size(900, 900);

  ball1 = new Ball();
  ball2 = new Ball();
}

void draw() {
  background(50);

  ball1.applyForce(new PVector(0, 10));
  ball2.applyForce(new PVector(0, 10));

  ball1.run();
  ball2.run();  

}
