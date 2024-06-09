class Body {
  PVector location;

  Body (PVector loc) {
    location = loc;
  }
  
  void display() {
    noStroke();
    pushMatrix();
    translate(location.x, location.y);
    ellipse(0, 0, 100, 100);
    popMatrix();
  }
}
