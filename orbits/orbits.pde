ArrayList<Body> bodies = new ArrayList<Body>();

void setup() {
  fullScreen();
  colorMode(HSB, 360, 100, 100);

  rectMode(CENTER);
  noStroke();
  fill(224, 30, 99);
}

void draw() {
  background(327, 30, 99);

  for (int i = 0; i < bodies.size(); i++) {
    Body b = bodies.get(i);
    b.update();
    b.display();
  }
}

void mouseClicked() {
  PVector location = new PVector(mouseX, mouseY);
  PVector velocity = new PVector(random(-1, 1), random(-1, 1));
  bodies.add(new Body(location, 10.0, velocity));
}

void forces() {
}
