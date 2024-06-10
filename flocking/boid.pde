class Boid {
  PVector location;

  Boid(PVector loc) {
    location = loc;
  }

  void display() {
    noStroke();
    fill(190, 30, 99);

    pushMatrix();
    translate(location.x, location.y);
    triangleShape();
    popMatrix();
  }

  void triangleShape() {
    beginShape();
    vertex(0, 0);
    vertex(30, 30);
    vertex(-30, 30);
    vertex(0, 0);
    endShape();
  }
}
