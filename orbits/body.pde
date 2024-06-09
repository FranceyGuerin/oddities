class Body {
  PVector location;
  float mass;
  PVector velocity;
  PVector force;

  Body (PVector loc, float m, PVector v) {
    location = loc;
    mass = m;
    velocity = v;
    force = new PVector(0, 0);
  }

  void display() {
    noStroke();
    fill(22, 30, 99);

    pushMatrix();
    translate(location.x, location.y);
    ellipse(0, 0, mass*10, mass*10);
    popMatrix();
  }

  void update() {
    velocity.add(force);
    location.add(velocity);
    clearForce();
  }

  void clearForce() {
    force.x = 0;
    force.y = 0;
  }

  void friction(float f) {
    velocity.x *= (1-f);
    velocity.y *= (1-f);
  }
}
