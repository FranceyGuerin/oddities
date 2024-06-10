ArrayList<Boid> boids = new ArrayList<Boid>();

void setup() {
  fullScreen();
  colorMode(HSB, 360, 100, 100);

  noStroke();
}

void draw() {
  background(359, 30, 99);

  for (int i = 0; i < boids.size(); i++) {
    Boid b = boids.get(i);
    b.update();
    b.display();
  }
}

void mouseClicked() {
  PVector location = new PVector(mouseX, mouseY);
  boids.add(new Boid(location));
}
