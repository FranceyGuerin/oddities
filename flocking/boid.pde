class Boid {
  PVector location;
  PVector velocity;
  PVector acceleration;

  float max_velocity;


  Boid(PVector loc) {
    location = loc;
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);

    max_velocity = 2;
  }

  void update() {
    applyForce();
    velocity.add(acceleration);
    velocity.limit(max_velocity);

    location.add(velocity);

    acceleration.mult(0);
  }

  void applyForce() {
    acceleration.add(random(0, 10), random(0, 10));
  }

  void display() {
    noStroke();
    fill(190, 30, 99, 60);

    float theta = velocity.heading() + radians(90);
    pushMatrix();
    translate(location.x, location.y);

    for (int i = 0; i < 7; i++) {
      float jitter = random(-radians(15), radians(15));

      pushMatrix();
      rotate(theta + jitter);
      triangleShape();
      popMatrix();
    }
    popMatrix();
  }

  void triangleShape() {
    beginShape(TRIANGLES);
    vertex(0, 0);
    vertex(30, 30);
    vertex(-30, 30);
    endShape();
  }
}
