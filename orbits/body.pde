class Body {
  PVector location;
  float mass;
  PVector velocity;
  PVector force;

  Body (PVector loc, float m, PVector v) {
    location = loc;
    mass = m;
    velocity = v;
    force = new PVector(0,0);
  }
  
  void display() {
    noStroke();
    pushMatrix();
    translate(location.x, location.y);
    ellipse(0, 0, 100, 100);
    popMatrix();
  }
  
  void update(){
    velocity.add(force);
    location.add(velocity);
  }
}
