ArrayList<Body> bodies = new ArrayList<Body>();

void setup() {
  fullScreen();
  colorMode(HSB, 360, 100, 100);

  rectMode(CENTER);
  noStroke();
}

void draw() {
  background(327, 30, 99);
  cleanUp();
  forces();

  for (int i = 0; i < bodies.size(); i++) {
    Body b = bodies.get(i);
    b.friction(0.01);
    b.update();
    b.display();
  }
}

void mouseClicked() {
  PVector location = new PVector(mouseX, mouseY);
  PVector velocity = new PVector(random(-1, 1), random(-1, 1));
  bodies.add(new Body(location, random(0, 20), velocity));
}

void forces() {
  PVector center = new PVector(width/2, height/2);

  for (int i = 0; i < bodies.size(); i++) {
    Body b1 = bodies.get(i);

    // Apply a small force to keep the orbiting bodies roughly on the center of the display
    PVector center_force = new PVector((center.x - b1.location.x) * .00005, (center.y - b1.location.y) * .00005);
    b1.force.add(center_force);

    for (int j = 0; j < bodies.size(); j++) {
      if (i != j) {
        Body b2 = bodies.get(j);

        float distance = b1.location.dist(b2.location);
        float magnitude = b1.mass * b2.mass / (distance * distance);

        PVector force = new PVector((b2.location.x - b1.location.x) * magnitude, (b2.location.y - b1.location.y) * magnitude);
        b1.force.add(force);
      }
    }
  }
}


void cleanUp() {
  for (int i = 0; i < bodies.size(); i++) {
    Body b1 = bodies.get(i);
    if (b1.location.x > (width * 2) || b1.location.x < 0 - width || b1.location.y > (height * 2) || b1.location.y < 0 - height) {
      println("Removing body at location:" + b1.location);
      bodies.remove(b1);
    }
  }
}
