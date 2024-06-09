class Bone {
  PVector base;
  PVector tip;

  float limit;

  Bone (PVector b, PVector t) {
    base = b;
    tip = t;

    limit = base.dist(tip);
  }

  void display() {
    strokeWeight(5);
    stroke(0, 0, 100);

    line(base.x, base.y, tip.x, tip.y);
    ellipse(base.x, base.y, 10, 10);
    ellipse(tip.x, tip.y, 10, 10);
  }
}
