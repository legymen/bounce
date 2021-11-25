class Ball{
    PVector position;
    PVector velocity;
    PVector acceleration;
    
    int size;
    color c;
    float mass;

    Ball(){
        position = new PVector(random(0,100), random(0, 100));
        velocity = new PVector(0, 0);
        acceleration = new PVector(0, 0);

        size = 15;
        c = color(random(0,255),random(0,255), random(0,255));
        mass = size*size*size;
    }

    void render(){
        fill(c);
        ellipse(position.x, position.y, size, size);
    }

    void update(){
        velocity.add(acceleration);
        position.add(velocity);
        
        acceleration.mult(0);

        if (position.x > width || position.x < 0) {
            velocity.x = velocity.x * (-1);
        }
        if (position.y > height || position.y < 0) {
            velocity.y = velocity.y * (-1);
        }     

    }

    void run(){
        update();
        render();
    }

    void applyForce(PVector f){
        acceleration.add(f.div(mass));
    }
}